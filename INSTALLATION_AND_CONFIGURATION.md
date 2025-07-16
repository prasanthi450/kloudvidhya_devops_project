🔑 Prerequisites

AWS CLI configured or IAM role attached to EC2

Default VPC & SSH key pair available

Required environment variables set (for CLI users)

🌍 Terraform

Installed via HashiCorp repo on Linux

Used to provision EC2 instances, security groups, ECR repo, and GitHub repo

📦 Ansible

Installed on EC2 (Ansible Controller)

Used for remote provisioning like Jenkins setup and Docker deployment

⚙️ Jenkins

Installed on separate EC2 instance

Configured with Java and runs on port 8080

🐳 Docker

Installed on both EC2 instances (Ansible & Jenkins)

Required for building and running the custom NGINX image

🧰 AWS CLI & ECR

CLI installed for interacting with AWS services

Docker login to ECR configured via get-login-password

🌐 GitHub

Git installed to clone/push project repo

GitHub used to store project code and automation files

🔐 IAM Role for Jenkins EC2

IAM Role attached with policies for ECR and S3 access

Enables secure Docker image push without AWS credentials


