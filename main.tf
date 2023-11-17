bucket_key_enabled
resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"
bucket_key_enabled = true

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

  #provisioner "local-exec" {
  #  command = templatefile("${var.host_os}-ssh-config.tpl", {
  #    hostname = self.public_ip,
  #    user     = "ubuntu",
  #  identityfile = "~/.ssh/mtckey" })
  #  interpreter = var.host_os == "windows" ? ["Powershell", "-Command"] : ["bash", "-c"]
  #}
}
