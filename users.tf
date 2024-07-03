resource "aws_iam_user" "users1" {
  name = "jihyo"
}
resource "aws_iam_user" "users2" {
  name = "sana"
}
resource "aws_iam_user" "users3" {
  name = "momo"
}
resource "aws_iam_user" "users4" {
  name = "dahyun"
}
resource "aws_iam_group" "group1" {
  name = "twice"
}
resource "aws_iam_group_membership" "group1" {
  name = "twice"
  users = [
    aws_iam_user.users1.name,
    aws_iam_user.users2.name,
    aws_iam_user.users3.name,
    aws_iam_user.users4.name,
    aws_iam_user.manual2.name,
  
  ]
  group = aws_iam_group.group1.name
}
resource "aws_iam_user" "manual2" {
  name = "mina"
}
#terraform import aws_iam_user.manual2 mina
