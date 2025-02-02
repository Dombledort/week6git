resource "aws_lightsail_instance" "custom" {
  name              = "myserver"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via terraform</h1>' | sudo tee /var/www/html/index"
  #key_pair_name     = "keypairsvr"
  tags = {
    Team      = "Devops"
    env       = "dev"
    create_by = "terraform"
  }
}

