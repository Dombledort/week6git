output "my-public-ip" {
  value = aws_lightsail_instance.custom
}
output "My_username" {
  value = aws_lightsail_instance.custom.username
}
