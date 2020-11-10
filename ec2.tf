resource "aws_instance" "myinstance" {
  ami                         = "ami-0d59ddf55cdda6e21"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.mykey.key_name}"
  subnet_id                   = "${aws_subnet.mysub.id}"
  vpc_security_group_ids      = ["${aws_security_group.mysg.id}"]
  associate_public_ip_address = "true"
  tags = {
    Name = "single_public_ec2"
  }
}

