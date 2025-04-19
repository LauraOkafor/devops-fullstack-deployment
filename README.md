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
```

# Ansible & Docker Configuration

## What I Did:

- **Installed Docker and Docker Compose** on the EC2 instances.
- **Used Ansible playbooks** to automate the setup of dependencies, including Docker, Docker Compose, and cloning the necessary GitHub repositories.
- **Cloned the Development branch** of the application (frontend, backend, and database) from the GitHub repository to the respective EC2 instances.
- **Dockerized Full-Stack Application:**
  - Frontend, Backend, and Database were Dockerized to run in separate containers.
  - Set up Docker Compose to manage multi-container environments for the application.
  - Configured each component with a Dockerfile to build and run containers.
- **Automated Deployment:**
  - Used Ansible to automate the deployment process, ensuring that every instance has the latest code from the Development branch.
  - Each component was deployed and run within its own container (frontend with Nginx, backend with Gunicorn, database with PostgreSQL).

## Technologies Used:
- **Ansible**: Automated the provisioning of EC2 instances and deployment of Dockerized application components.
- **Docker**: Containerized the frontend, backend, and database components.
- **Docker Compose**: Used to orchestrate the containers and ensure communication between components.
- **Git**: Cloned the repositories for the frontend, backend, and database components from the GitHub repo.
- **GitHub**: The code repository hosting the full-stack application.
- **AWS EC2**: Hosting the application on virtual machines.

## How to Use:

### 1. Clone the Repository:
Clone this repository to your local machine:

```bash
git clone https://github.com/LauraOkafor/devops-fullstack-deployment.git
cd devops-fullstack-deployment/ansible
```

### 2. Update Inventory File:

Update the `inventory.ini` file with the public IPs of your EC2 instances for the frontend, backend, and database components.

```ini
[frontend]
frontend ansible_host=FRONTEND_VM_IP ansible_user=ubuntu

[backend]
backend ansible_host=BACKEND_VM_IP ansible_user=ubuntu

[database]
database ansible_host=DATABASE_VM_IP ansible_user=ubuntu
```
### Run Ansible Playbook:

To run the Ansible playbook and deploy the full-stack application, use the following command:

```bash
ansible-playbook -i inventory.ini site.yml
```

### This will:
- Install **Docker** and **Docker Compose** on the EC2 instances.
- Clone the respective code (frontend, backend, and database) from the **Development** branch of your GitHub repo.
- Set up **Docker** and **Docker Compose** to run your application.new

### Verify Deployment:
After the playbook runs successfully, you should be able to access:

- **Frontend**: Accessible via the public IP of the frontend EC2 instance.
- **Backend**: The backend should be accessible from the frontend or through its IP.
- **Database**: Ensure the database is running, and the backend is able to connect to it.

## CI/CD with GitHub Actions

### What I Did:
- Configured a **GitHub Actions** workflow to automate deployment on every push to the `Development` or `Production` branches.
- Built **Docker** images for the frontend and backend and pushed them to **Docker Hub**.
- Used **SSH** and **Ansible** to deploy updates automatically to AWS EC2 instances.
- Performed post-deployment **health checks** to ensure successful rollout.

### Technologies Used:
- **GitHub Actions** – To automate the build and deployment pipeline.
- **Docker & Docker Hub** – To build and store container images.
- **Ansible** – To manage server provisioning and container deployment.
- **SSH** – To securely connect and deploy to EC2 instances.
- **Curl** – For basic health checks after deployment.

### What Happens:
- When code is pushed to `Development` or `Production`:
  - GitHub Actions builds Docker images.
  - Docker images are pushed to Docker Hub.
  - SSH keys are used to access EC2 instances.
  - Ansible playbooks are executed to deploy the latest changes.
  - Health checks confirm that both frontend and backend are live..