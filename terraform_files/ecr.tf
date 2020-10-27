module "ecr" {

  source = "lgallard/ecr/aws"

  name   = "maze-wars"

  # Tags
  image_tag_mutability = "MUTABLE"
  tags = {
    Owner       = "Oleh"
    Environment = "dev"
    Terraform   = true
  }

}
