module "ecr" {

  source = "lgallard/ecr/aws"

  name   = "ecr-repo-dev"

  # Tags
  tags = {
    Owner       = "Oleh"
    Environment = "dev"
    Terraform   = true
  }

}
