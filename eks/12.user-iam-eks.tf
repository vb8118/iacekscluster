resource "aws_iam_user" "developer" {
  name = "varun"
}


resource "aws_iam_group" "eks-developers" {
  name = "terraform-eks-developers"
}

resource "aws_iam_group_membership" "achintha_membership" {
  name = aws_iam_user.developer.name
  users = [aws_iam_user.developer.name]
  group = aws_iam_group.eks-developers.name
}

resource "aws_iam_group_policy_attachment" "eks-developers-view-access" {
  policy_arn = aws_iam_policy.AmazonEKSViewNodesAndWorkloadsPolicy.arn
  group      = aws_iam_group.eks-developers.name
}

resource "aws_iam_group_policy_attachment" "AmazonEKSAdminPolicy" {
  policy_arn = aws_iam_policy.AmazonEKSAdminPolicy.arn
  group      = aws_iam_group.eks-developers.name
}