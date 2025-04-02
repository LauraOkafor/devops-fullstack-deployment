# devops-fullstack-deployment
DevOps pipeline deploying React/Django app with Terraform, Ansible, Docker, CI/CD and Kubernetes orchestration across development and production environments.
  
# Terraform Configuration

## What I Did:

- **Provisioned AWS Resources:**
  - Created a **VPC** (Virtual Private Cloud) with isolated subnets for hosting EC2 instances.
  - Defined **EC2 instances** for the frontend, backend, and database components.
  - Set up **security groups** to allow secure communication between the components.
  - Used **input variables** to customize the configuration for different environments (e.g., AWS region, SSH key, instance type).

- **Infrastructure as Code (IaC):**
  - Leveraged **Terraform** to automate the creation of AWS resources, enabling easy replication and scaling.

## Technologies Used:
- **Terraform**: Infrastructure as Code (IaC) for provisioning AWS resources.
- **AWS**: For cloud infrastructure and resource management.
- **VPC**: To isolate the network.
- **EC2**: For virtual machine instances to host the app.
- **Security Groups**: For controlling access to the instances.

## How to Use:

Run the following commands to provision the infrastructure:

```bash
terraform init  # Initialize Terraform
terraform apply  # Apply the configuration to create the AWS resources
