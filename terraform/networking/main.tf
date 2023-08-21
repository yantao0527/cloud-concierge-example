resource "aws_lb" "example_lb" {
  name               = "tf-managed-demo-alb"
  internal           = false
  load_balancer_type = "application"
  subnets            = [var.subnet_id_one, var.subnet_id_two]

  enable_deletion_protection = false
  enable_tls_version_and_cipher_suite_headers = false

  tags = {
    origin        = "demonstration"
    creator       = "terraform"
    resource_type = "networking"
  }
}

resource "aws_vpc" "example_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name = "${var.prefix}-vpc"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.example_vpc.id
  tags = {
    Name = "${var.prefix}-gw"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id                  = aws_vpc.example_vpc.id
  cidr_block              = var.vsw_1_cidr
  map_public_ip_on_launch = "true" //it makes this a public subnet
  availability_zone       = var.zone_1

  depends_on = [aws_internet_gateway.gw]

  tags = {
    Name = "${var.prefix}-subnet"
  }
}
