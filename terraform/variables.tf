variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
}

variable "bucket_name" {
  description = "Unique S3 bucket name for storing artifacts"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "github_owner" {
  description = "GitHub username"
  type        = string
}

variable "github_repo" {
  description = "GitHub repo containing app code"
  type        = string
}

variable "github_branch" {
  description = "GitHub branch to track"
  type        = string
}

variable "github_token" {
  description = "GitHub Personal Access Token (unused in Terraform but may be required in CI/CD)"
  type        = string
}

variable "codestar_connection_arn" {
  description = "ARN of the CodeStar GitHub connection"
  type        = string
}

variable "instance_tag_key" {
  description = "Key used for tagging EC2 instance"
  type        = string
  default     = "Name"
}

variable "instance_tag_value" {
  description = "Value used for tagging EC2 instance"
  type        = string
  default     = "MyAppServer"
}

variable "codebuild_image" {
  description = "Docker image for CodeBuild environment"
  default     = "aws/codebuild/standard:6.0"
}
