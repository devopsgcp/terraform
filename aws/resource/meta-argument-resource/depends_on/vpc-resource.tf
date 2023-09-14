# resource block\

# vpc creation
resource "aws_vpc" "my-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "dev"
  }

}

# vpc subnet

resource "aws_subnet" "my-subnet" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-west-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "dev-subnet"
  }

}

# interneet gateway 

resource "aws_internet_gateway" "my-internet-gateway" {
  vpc_id = aws_vpc.my-vpc.id
  tags = {
    Name = "dev-gateway"
  }

}
# create route table
resource "aws_route_table" "vpc-route" {
  vpc_id = aws_vpc.my-vpc.id

}

#create route to access interneet

resource "aws_route" "my-route" {
  route_table_id         = aws_route_table.vpc-route.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.my-internet-gateway.id

}

# Associate route table with subnet 
resource "aws_route_table_association" "dev-route-association" {
  route_table_id = aws_route_table.vpc-route.id
  subnet_id      = aws_subnet.my-subnet.id


}

# security group
resource "aws_security_group" "dev-security" {
  name        = "https-allow"
  description = "Dev-sg group"
  vpc_id      = aws_vpc.my-vpc.id

  ingress {
    description = "applow ssh port "
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  ingress {
    description = "applow 80 port "
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]

  }

}