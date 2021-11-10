provider "aws" {
    region = "us-east-1"
}

terraform {
 backend "s3" {
    bucket = "dasari1998"
    key    = "ami/cart/dev/dev_state_file_backup"
    region = "us-east-1"
    }
}

module "cart" {
    source = "git::https://dasarisaikrishna97@dev.azure.com/dasarisaikrishna97/Roboshop/_git/terraform-ami"
    component   = "cart"
    APP_VERSION = var.APP_VERSION
    PAT         = var.PAT
}

variable "APP_VERSION" {}