/* this is our first file
created using terraform and
god bless you */

provider "aws" {
  access_key = "AKIAQWELRDCJ55QJNOBK"
  secret_key = "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"
  region     = "ap-south-1"
}


resource "aws_instance" "ourfirst" {
  ami           = "ami-0447a12f28fddb066"
  instance_type = "t2.micro"
  tags = {
    Name = "First-server"
}
}

/*
run
terraform validate
terraform plan
terraform apply
and after checking the instance on aws dashboard
terraform destroy
*/
