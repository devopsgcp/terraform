output "ec2-instance-public-ip" {
  description = "Public IP"
  value       = aws_instance.linux.*.public_ip

}
output "ec2-instance-private-ip" {
  description = "Private IP"
  value       = aws_instance.linux.*.private_ip

}

output "aws_security_group" {
  description = "aws-ec2-security-group"
  value       = aws_instance.linux.*.security_groups

}

output "ec2-public-dns" {
  description = "ec2-public-dns"
  value       = aws_instance.linux.*.public_dns


}