
resource "aws_iam_user" "examples" {
   for_each = toset(["jenny", "rose", "lisa", "jisoo"]) 
  name = each.key
}

resource "aws_iam_group" "blackpink" {
  name = "blackpink"
}


 resource "aws_iam_group_membership" "team3" {
  name = "tf-testing-group-membership"
  users = [
    for i in aws_iam_user.examples : i.name 
  ]
  group = aws_iam_group.blackpink.name
}





