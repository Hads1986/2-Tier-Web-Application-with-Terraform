# Scalable Web Application Deployment with Terraform

Deploy a scalable web application on an Auto-Scaling Group (ASG) of EC2 instances across three availability zones, incorporating Application Load Balancers (ALB) and implementing a scaling policy based on CPU load. The deployment encompasses public and private subnets, with images loaded from S3 buckets. Each environment also utilizes an S3 bucket to store Terraform state and images.

## Steps to Perform

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Review Changes (Optional):
   ```bash
   terraform plan
   ```

3. Apply Changes:
   ```bash
   terraform apply
   ```
