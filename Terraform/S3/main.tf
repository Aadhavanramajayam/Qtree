terraform {
  backend "s3" {
    bucket = "terraformremotestatefile"
    key = "terraformtask-tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "sub"{
    bucket = "task@123S"
    
  }
resource "aws_s3_bucket_versioning" "example_bucket" {
  bucket = aws_s3_bucket.sub
  versioning_configuration {
    status = "Enabled"
  }
}