provider "aws" {
  shared_credentials_file = "~/.aws/credentials"
  profile                 = var.aws-profile
  region                  = var.aws-region
}
