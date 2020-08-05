#####################################
# Builder
#####################################

build {
  sources = [
    "source.amazon-ebs.this"
  ]
 
  provisioner "shell" {
    inline = [
      "sudo yum -y update",
      "sudo yum -y install golang"
    ]
  }
}