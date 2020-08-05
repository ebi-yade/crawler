#####################################
# Source AMI
#####################################
source "amazon-ebs" "this" {
  region               = var.region
  profile              = var.profile
  ami_name             = "{{timestamp}}-${var.suffix_kebab}"
  source_ami           = var.source_ami
  instance_type        = "t2.micro"
  iam_instance_profile = "instance-profile-${var.suffix_kebab}"
  ssh_username         = "ec2-user"
 
 /*
  source_ami_filter {
    owners      = ["self"]
    most_recent = true
 
    filters {
      virtualization-type = "hvm"
      name                = "${var.ami_name}*"
      root-device-type    = "ebs"
    }
  }
*/
 
  tags = {
    Name = "packer-${var.suffix_kebab}"
  }
}