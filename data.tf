data "aws_availability_zones" "primary" {
  provider = aws.primary
  state = "available"
}

data "aws_availability_zones" "secondary" {
  provider = aws.secondary
  state = "available"
}

data "aws_availability_zones" "tertiary" {
  provider = aws.tertiary
  state = "available"
}

data "aws_ami" "primary_ami" {
  provider = aws.primary
  owners      = ["amazon"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "secondary_ami" {
  provider = aws.secondary
  owners      = ["amazon"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "tertiary_ami" {
  provider = aws.tertiary
  owners      = ["amazon"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
}