
# Resource: aws_iam_role
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role

resource "aws_iam_role" "eks_developer" {
  # The name of the role
  name = "eks-developer"

  # The policy that grants an entity permission to assume the role.
  # Used to access AWS resources that you might not normally have access to.
  # The role that Amazon EKS will use to create AWS resources for Kubernetes clusters
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

# Resource: aws_iam_role_policy_attachment
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment

resource "aws_iam_role_policy_attachment" "amazon_eks_developer_policy" {
  # The ARN of the policy you want to apply
  # https://github.com/SummitRoute/aws_managed_policies/blob/master/policies/AmazonEKSClusterPolicy
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSViewNodesAndWorkloadsPolicy"

  # The role the policy should be applied to
  role = aws_iam_role.eks_developer.name
}

resource "aws_iam_role" "eks_admin" {
  # The name of the role
  name = "eks-admin"

  # The policy that grants an entity permission to assume the role.
  # Used to access AWS resources that you might not normally have access to.
  # The role that Amazon EKS will use to create AWS resources for Kubernetes clusters
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

# Resource: aws_iam_role_policy_attachment
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment

resource "aws_iam_role_policy_attachment" "amazon_eks_admin_policy" {
  # The ARN of the policy you want to apply
  # https://github.com/SummitRoute/aws_managed_policies/blob/master/policies/AmazonEKSClusterPolicy
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSAdminPolicy"

  # The role the policy should be applied to
  role = aws_iam_role.eks_admin.name
}

#create access key ID and secret key 
resource "aws_iam_access_key" "varun_access_key" {
  user = aws_iam_user.developer.name
}

output "access_key_id" {
  value = aws_iam_access_key.varun_access_key.id
  sensitive = true
}

output "secret_access_key" {
  value = aws_iam_access_key.varun_access_key.secret
  sensitive = true
}

locals {
  varun_keys_csv = "access_key,secret_key\n${aws_iam_access_key.varun_access_key.id},${aws_iam_access_key.varun_access_key.secret}"
}

resource "local_file" "varun_keys" {
  content  = local.varun_keys_csv
  filename = "varun-keys.csv"
}