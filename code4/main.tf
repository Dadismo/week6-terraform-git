resource "aws_iam_group" "ansiblegroup" {
  name = "ansiblegroup"
  }

  resource "aws_iam_user" "ansible" {
  name = "ansible"
}