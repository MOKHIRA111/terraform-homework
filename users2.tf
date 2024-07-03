
resource "aws_iam_user" "user1" {
  name = "jenny"
}
resource "aws_iam_user" "user2" {
  name = "rose"
}
resource "aws_iam_user" "user3" {
  name = "lisa"
}
resource "aws_iam_user" "user4" {
  name = "jisoo"
}
resource "aws_iam_group" "team" {
  name = "blackpink"
}
resource "aws_iam_group_membership" "team" {
  name = "blackpink"
  users = [
    aws_iam_user.user1.name,
    aws_iam_user.user2.name,
    aws_iam_user.user3.name,
    aws_iam_user.user4.name,
    aws_iam_user.manual1.name,
  ]
  group = aws_iam_group.team.name
}
resource "aws_iam_user" "manual1" {
  name = "miyeon"
}
#terraform import aws_iam_user.manual1 miyeon
