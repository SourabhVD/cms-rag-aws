provider "aws" {
  region              = "ap-southeast-2"
  allowed_account_ids = ["088312288392"]

  default_tags {
    tags = {
      Project     = "cms-rag"
      Environment = "dev"
      ManagedBy   = "Terraform"
    }
  }
}
