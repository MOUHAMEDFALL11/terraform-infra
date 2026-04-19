output "vpc_id" {
  value = aws_vpc.mon_vpc.id
}

output "ip_publique" {
  value = aws_instance.ma_machine.public_ip
}