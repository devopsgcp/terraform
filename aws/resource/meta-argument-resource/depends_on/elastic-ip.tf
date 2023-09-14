resource "aws_eip" "dev-elastic" {
  instance = aws_instance.dev-instance.id
  # meta argument
  depends_on = [aws_internet_gateway.my-internet-gateway]


}