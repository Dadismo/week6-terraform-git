resource "aws_iam_group" "ansiblegroup" {
  name = "ansiblegoup"
  }

  resource "aws_iam_user" "ansible" {
  name = "ansible"
}