resource "aws_subnet" "mysub" {
  vpc_id            = "${aws_vpc.myvpc.id}"
  availability_zone = "ap-northeast-2a"
  cidr_block        = "10.10.10.0/24"
  tags = {
    Name = "tf_single_public_subnet"
  }
}

