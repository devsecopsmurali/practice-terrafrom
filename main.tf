



resource "aws_iam_role" "cross_account_role" {
  name               = "CrossAccountRole"
  assume_role_policy = jsonencode({
    Version   = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = {#
        AWS = "arn:aws:iam::746982785361:root"
      }
      Action    = "sts:AssumeRole"
    }]
  })
}


resource "aws_organizations_account" "new_account" {
  name             = "NewAccountName"
  email            = "ankammavuyouru@gmail.com"
  role_name        = aws_iam_role.cross_account_role.name
}