locals {

  common_tags = {
    "Project" = "RDS Aurora Tech-Challenge"
    CreatedAt = timestamp()
    ManagedBy = "Terraform"
    Owner     = "RDS Aurora Tech-Challenge"
  }
}
