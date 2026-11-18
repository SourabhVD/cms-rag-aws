provider "aws" {
  region = "ap-southeast-2"

  default_tags {
    tags = {
      Project     = "cms-rag"
      Environment = "dev"
      ManagedBy   = "Terraform"
    }
  }
}