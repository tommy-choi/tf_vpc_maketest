resource "aws_eip" "myeip" {
  instance = "${aws_instance.myinstance.id}"
  vpc = true
  tags = {
    Name = "tf_single_eip"
  }
}
