resource "aws_s3_bucket" "cms_documents" {
  bucket_prefix = "cms-rag-documents-dev-"
}

resource "aws_s3_bucket_versioning" "cms_documents" {
  bucket = aws_s3_bucket.cms_documents.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "cms_documents" {
  bucket = aws_s3_bucket.cms_documents.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_notification" "cms_documents" {
  bucket      = aws_s3_bucket.cms_documents.id
  eventbridge = true
}