terraform {
  backend "s3" {
    bucket         = "tf-eks-buckets"
    key            = "eks/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
