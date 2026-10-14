resource "aws_s3_bucket" "tfstate" {
  bucket = "${local.project}-tfstate"
}
