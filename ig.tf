resource "aws_internet_gateway" "myigw" {
  vpc_id = "${aws_vpc.myvpc.id}"
  tags = {
    Name = "tf_single_internet_gateway"
  }
}

