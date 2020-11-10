resource "aws_default_route_table" "myrt" {
  default_route_table_id = "${aws_vpc.myvpc.default_route_table_id}"
  route {
  cidr_block = "0.0.0.0/0"
  gateway_id = "${aws_internet_gateway.myigw.id}"
  }
  tags = {
    Name = "tf_single_route_table"
  }
}

