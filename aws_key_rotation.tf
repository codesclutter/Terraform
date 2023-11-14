/*
provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA3CIYKEMGB6GWZDWB"
  secret_key = "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"
}

resource "aws_iam_access_key" "existing_key" {
  user = "kshitij-automation"
}

resource "aws_iam_access_key" "new_key" {
  user = "kshitij-automation"
}

resource "null_resource" "rotate_keys" {
  provisioner "local-exec" {
    command = <<EOT
      AWS_ACCESS_KEY_ID=${aws_iam_access_key.new_key.id} AWS_SECRET_ACCESS_KEY=${aws_iam_access_key.new_key.secret} aws iam update-access-key --access-key-id ${aws_iam_access_key.existing_key.id} --status Inactive
      AWS_ACCESS_KEY_ID=${aws_iam_access_key.new_key.id} AWS_SECRET_ACCESS_KEY=${aws_iam_access_key.new_key.secret} aws iam delete-access-key --access-key-id ${aws_iam_access_key.existing_key.id}
    EOT
  }

  depends_on = [aws_iam_access_key.new_key]
}

output "new_access_key" {
  value = aws_iam_access_key.new_key.id
  sensitive = true
}

output "new_secret_key" {
  value = aws_iam_access_key.new_key.secret
  sensitive = true
}

*/
