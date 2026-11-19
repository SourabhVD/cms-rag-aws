terraform {
  backend "s3" {
    bucket              = "cms-rag-tfstate-088312288392-ap-southeast-2"
    key                 = "cms-rag/dev/terraform.tfstate"
    region              = "ap-southeast-2"
    allowed_account_ids = ["088312288392"]
    encrypt             = true
    use_lockfile        = true
  }
}