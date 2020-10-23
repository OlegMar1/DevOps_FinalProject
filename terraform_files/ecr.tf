module "ecr" {

  source = "lgallard/ecr/aws"

  name   = "mazewars"

  # Tags
  image_tag_mutability = "MUTABLE"
  tags = {
    Owner       = "Oleh"
    Environment = "dev"
    Terraform   = true
  }

}
