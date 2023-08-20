
#CONCIERGE_IMAGE=dragondropcloud/cloud-concierge:latest
#CONCIERGE_IMAGE=dragondropcloud/cloud-concierge-dev:latest
CONCIERGE_IMAGE=cloud-concierge-local:latest

volume-main:
	docker volume create concierge_main

run:
	docker run --name concierge \
		--env-file ./frank.env \
		-v concierge_main:/main \
		-v $(HOME)/.aws:/main/credentials/aws:ro \
		-w /main \
		$(CONCIERGE_IMAGE)

run2: rm-volume-local
	-docker rm concierge
	docker run --name concierge \
		--env-file ./frank.env \
		-v $(PWD)/volume_main:/main \
		-v $(HOME)/.aws:/main/credentials/aws:ro \
		-w /main \
		$(CONCIERGE_IMAGE)

rm:
	docker rm concierge

rm2:
	docker rm concierge
	sudo rm -rf volume_main

rm-volume-local:
	sudo rm -rf volume_main

logs:
	docker logs concierge

check-main:
	docker run -it --rm \
		-v concierge_main:/main \
		-w /main \
		busybox:latest sh

check-main2:
	sudo chown -R $(USER) volume_main
	chmod +x volume_main/*

#### Infracost

infracost-install:
	curl -fsSL https://raw.githubusercontent.com/infracost/infracost/master/scripts/install.sh | sh

infracost-login:
	infracost auth login

infracost-key:
	@echo Please set infracost api_key, run
	@echo infracost configure set api_key ico-*******************************

infracost:
	infracost breakdown --path terraform

#### AWS

aws-configure:
	aws configure

#### Terraform

storage-apply:
	@echo "(cd terraform/persistent-storage; make apply)"

storage-destroy:
	@echo "(cd terraform/persistent-storage; make destroy)"

networking-apply:
	@echo "(cd terraform/networking; make apply)"

networking-destroy:
	@echo "(cd terraform/networking; make destroy)"

