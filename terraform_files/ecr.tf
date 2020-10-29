variable "ecr_names" {
  type = list(string)
  default  =["maze-wars", "nginx"]
}

module "ecr" {

  source = "lgallard/ecr/aws"
  count = length(var.ecr_names)
  name   = var.ecr_names[count.index]

  # Tags
  image_tag_mutability = "MUTABLE"
  tags = {
    Owner       = "Oleh"
    Environment = "dev"
    Terraform   = true
  }

}
