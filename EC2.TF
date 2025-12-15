resource "aws_instance" "web_az1" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet_az1.id
}

resource "aws_instance" "web_az2" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet_az2.id
}
