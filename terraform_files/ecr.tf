variable "ecr_names" {
  type = list(string)
  default  =["maze-wars", "nginx"]
}

module "ecr" {

  source = "lgallard/ecr/aws"
  for_each = toset(var.ecr_names)
  name = each.value

  # Tags
  image_tag_mutability = "MUTABLE"
  tags = {
    Owner       = "Oleh"
    Environment = "dev"
    Terraform   = true
  }

}
