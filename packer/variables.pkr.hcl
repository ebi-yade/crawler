variable "region" {
    type=string
    default = "ap-northeast-1"
}
variable "profile" {
    type=string
    default = "default"
}

variable "source_ami"{ 
    type=string 
    default = "ami-0a1c2ec61571737db"
}

variable "suffix_kebab"{ type=string }