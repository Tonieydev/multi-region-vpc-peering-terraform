variable "primary" {
  type = string
  default = "us-east-1"
}

variable "secondary" {
  type = string
  default = "us-west-2"
}

variable "primary_vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "secondary_vpc_cidr" {
  type = string
  default = "10.1.0.0/16"
}

variable "primary_subnet_cidr" {
  description = "CIDR block for the primary subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "secondary_subnet_cidr" {
  description = "CIDR block for the secondary subnet"
  type        = string
  default     = "10.1.1.0/24"
}

 variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "primary_key_name" {
  description = "Name of the SSH key pair for Primary VPC instance (us-east-1)"
  type        = string
  default     = "vpc-peering-demo"
}

variable "secondary_key_name" {
  description = "Name of the SSH key pair for Secondary VPC instance (us-west-2)"
  type        = string
  default     = "vpc-peering-demo"
}

variable "primary_region" {
  description = "Primary AWS region for the first VPC"
  type        = string
  default     = "us-east-1"
}

variable "secondary_region" {
  description = "Secondary AWS region for the second VPC"
  type        = string
  default     = "us-west-2"
}


variable "tertiary" {
  description = "Tertiary aws region"
  type = string
  default = "us-east-2"
}

variable "tertiary_vpc_cidr" {
  description = "tertiaty vpc cidar block"
  type = string
  default = "10.2.0.0/16"
}

variable "tertiaty_subnet_cidr" {
  description = "tertiatry subnet"
  type = string
  default = "10.2.1.0/24"
}

variable "tertiary_key_name" {
  description = "Name of the SSH key pair for tertiary  VPC instance (us-east-2)"
  type        = string
  default     = "vpc-peering-demo"
}