resource "aws_iam_policy" "github_actions" {
  name        = "${var.github_actions_role_name}-policy"
  description = "Permissions for KUBAPP GitHub Actions Terraform provisioning"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect   = "Allow"
        Action   = "s3:ListBucket"
        Resource = "arn:aws:s3:::tester-bucket-tester"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "github_actions" {
  role       = aws_iam_role.github_actions.name
  policy_arn = aws_iam_policy.github_actions.arn
}
