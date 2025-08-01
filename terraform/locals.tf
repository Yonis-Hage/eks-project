locals {
  name   = "eks-proj"
  region = "eu-west-2"
  
  hosted_zone_arn = "arn:aws:route53:::hostedzone/Z00126831PUSUVE3F1EJU"
  
  tags = {
    environment = "sandbox"
    project     = "EKS Project"
    owner       = "Yonis"
  }
}
