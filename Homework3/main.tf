provider "aws" {
  region = "us-west-2"
}


resource "aws_instance" "web" {
  ami                    = "ami-078701cc0905d44e4"
  instance_type          = "t2.micro"
  associate_public_ip_address = true
  count                  = 3
  key_name               = aws_key_pair.deployer.key_name
  subnet_id = "subnet-0398a6e3b861d4301"
  
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data              = file("install.sh")
  tags = {
    Name = "web-${count.index + 1}"
  }

}
resource "aws_key_pair" "deployer" {
  key_name   = "bastion"
  public_key = file("~/.ssh/id_rsa.pub")
}





output "ec2" {
  value = aws_instance.web[*].public_ip

}

