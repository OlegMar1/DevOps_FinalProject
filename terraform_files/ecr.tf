module "ecr" {

  source = "lgallard/ecr/aws"

  name   = "mazewars"

  # Tags
  tags = {
    Owner       = "Oleh"
    Environment = "dev"
    Terraform   = true
  }

}
