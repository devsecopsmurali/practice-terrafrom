resource "aws_organizations_account" "new_account" {
  name   = var.aws_account_name
  email  = var.aws_account_email
  #role_name        = aws_iam_role.cross_account_role.name
}