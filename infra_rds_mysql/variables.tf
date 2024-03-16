variable "aws_region" {
  type    = string
  default = "us-east-1"

}

variable "engine" {
  description = "The database engine"
  type        = string
  default     = "aurora-mysql"
}

variable "allocated_storage" {
  description = "The amount of allocated storage."
  type        = number
  default     = 20
}

variable "storage_type" {
  description = "type of the storage"
  type        = string
  default     = "gp2"
}

variable "username" {
  description = "Username for the master DB user."
  default     = "root"
  type        = string
}

variable "password" {
  description = "password of the database"
  default     = "roottech"
  type        = string
}

variable "instance_class" {
  description = "The RDS instance class"
  default     = "db.t3.medium"
  type        = string
}


variable "engine_version" {
  description = "The engine version"
  default     = "8.0.mysql_aurora.3.03.1"
  type        = string
}

variable "skip_final_snapshot" {
  description = "skip snapshot"
  default     = "true"
  type        = string
}

variable "identifier" {
  description = "The name of the RDS instance"
  default     = "tech-challenge-db"
  type        = string
}

variable "port" {
  description = "The port on which the DB accepts connections"
  default     = "3306"
  type        = number
}

variable "name" {
  description = "The database name"
  default     = "tech_challenge"
  type        = string
}

variable "availability_zones" {
  description = "A list of EC2 availability zones for the DB instance."
  type        = list(string)
  default     = ["us-east-1a"]

}

variable "rds_sg" {
  description = "The name of the security group"
  type        = string
  default     = "rds_sg"

}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
  default     = "vpc-0a0d5209bb8e24134"

}

variable "security_group_id" {
  description = "The security group ID"
  type        = string
  default     = "sg-0b0624f75ce1a29f8"
}
variable "vpc_security_group_ids" {
  description = "A list of VPC security group IDs to associate with the DB cluster."
  type        = list(string)
  default     = ["sgr-0413be0dd76e7d1d3", "sgr-0eff454ba26bef188", "sgr-0fb652b58a3ef6b85", "sgr-07ae307679518946e"]  
}

variable "subnet_ids" {
  description = "A list of VPC subnet IDs."
  type        = list(string)
  default     =  ["subnet-04774bef44d5c31f2", "subnet-05fda1d146da5a61b"]
  
}