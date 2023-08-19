
CONCIERGE_IMAGE=dragondropcloud/cloud-concierge:latest

volume-main:
	docker volume create concierge_main

run:
	docker run --name concierge \
		--env-file ./frank.env \
		-v concierge_main:/main \
		-w /main \
		$(CONCIERGE_IMAGE)

rm:
	docker rm concierge

logs:
	docker logs concierge

copy-json:
	docker cp concierge:/main/mappings .

run2:
	docker run -it --rm \
		-v concierge_main:/main \
		-w /main \
		busybox:latest sh

#### Infracost

infracost-install:
	curl -fsSL https://raw.githubusercontent.com/infracost/infracost/master/scripts/install.sh | sh

infracost-login:
	infracost auth login

infracost-key:
	@echo Please set infracost api_key, run
	@echo infracost configure set api_key ico-*******************************

infracost:
	infracost breakdown --path terraform/persistent-storage