resource "aws_iam_policy" "github_action_policy" {
  name        = "github-action-policy"
  description = "Permissions for GitHub Actions"

  policy = data.aws_iam_policy_document.github_policy.json
}

resource "aws_iam_user_policy_attachment" "github_action_user_permission" {
  user       = aws_iam_user.github_action_user.name
  policy_arn = aws_iam_policy.github_action_policy.arn
}