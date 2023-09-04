resource "aws_iam_role" "eks_cluster" {

    name = "eks-cluster"

    assume_role_policy = jsonencode({
    
        "Version": "2012-10-17"
        "Statement":[
            {
                "Effect" : "Allow",
                "Principal": {
                    "Service":"eks.amazonaws.com"
                },
                "Action":"sts:AssumeRole"
                
            }
        ]
    })
  
  
}

resource "aws_iam_role_policy_attachment" "aws_eks_cluster_policy" {

    policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"

    role = aws_iam_role.eks_cluster.name
  
}

resource "aws_eks_cluster" "eks" {

    name="eks"

    role_arn = aws_iam_role.eks_cluster.arn

    version = "1.25"

    vpc_config {
      
      endpoint_private_access = false

      endpoint_public_access = true

      subnet_ids = [
        aws_subnet.Public-1.id,
        aws_subnet.Private-1.id
      ]
    }
    depends_on = [
      aws_iam_role_policy_attachment.aws_eks_cluster_policy

    ]
  
}

