resource "aws_security_group" "mysg" {
  name        = "tf_single_security_group"
  description = "Allow defined port "
  vpc_id      = "${aws_vpc.myvpc.id}"
  ingress {
    description = "SSH from local"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "tf_single_security_group"
  }
}

