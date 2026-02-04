# Terraform Module-Based EC2 Provisioning with Strapi

## Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform to provision an AWS EC2 instance through a modular architecture. After infrastructure provisioning, a Strapi CMS application was installed and configured on the EC2 instance. The project follows best practices such as module structure, key pair management through Terraform, version control, and pull request workflow.

---

## Technologies Used

- AWS EC2  
- Terraform  
- AWS CLI  
- Git and GitHub  
- Visual Studio Code  
- Strapi CMS  
- Amazon Linux  

---

## Project Structure
```
terraform-strapi-ec2/
│
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── .gitignore
├── modules/
│   └── ec2/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
```


---

## Implementation Steps

### 1. AWS CLI Configuration

Configured AWS credentials using:

aws configure


---

### 2. Terraform Initialization

Initialized Terraform and downloaded required providers:

terraform init


---

### 3. Validate Configuration

Verified Terraform configuration:

terraform validate


---

### 4. Review Execution Plan

Checked resource creation plan:

terraform plan


---

### 5. Infrastructure Provisioning

Provisioned EC2 instance and SSH key pair:

terraform apply


---

### 6. EC2 Verification

Verified instance creation from AWS EC2 Console.

---

### 7. SSH Connection to EC2

Connected to EC2 instance using generated key:

ssh -i "strapi-key.pem" ec2-user@<EC2_PUBLIC_IP>


---

### 8. Node.js Setup

Installed Node.js environment to support Strapi requirements and verified installation.

---

### 9. Strapi Application Setup

Created Strapi project:

npx create-strapi-app my-strapi-app


Selected default SQLite database and sample data.

---

### 10. Start Strapi Server

Started Strapi application:

cd my-strapi-app
npm run develop


---

### 11. Access Strapi Dashboard

Accessed admin panel from browser:

http://<EC2_PUBLIC_IP>:1337/admin


Configured admin user and verified application.

---

### 12. Git Repository Setup

Initialized Git repository and configured `.gitignore` to exclude Terraform cache, state files, and private keys.

---

### 13. Commit and Push Code

Committed Terraform configuration:

git add .
git commit -m "Terraform module based EC2 provisioning with Strapi setup"
git push origin main


---

### 14. Pull Request Workflow

Created feature branch and raised Pull Request for review.

---

## Results

- Successfully provisioned EC2 using Terraform modules  
- Generated and managed SSH key pair using Terraform  
- Deployed Strapi CMS on AWS EC2  
- Implemented Infrastructure as Code workflow  
- Maintained clean Git repository structure  
- Completed Pull Request based workflow  

<img width="936" height="495" alt="image" src="https://github.com/user-attachments/assets/da1bf95d-57ff-4ef8-9ade-8ae2dbdbedd0" />

<img width="888" height="357" alt="image" src="https://github.com/user-attachments/assets/921e86a2-5ddb-4b87-b14e-49800bf252bf" />

<img width="940" height="529" alt="image" src="https://github.com/user-attachments/assets/9ebd4ac6-e62a-45c9-a893-b6e05649f718" />

<img width="871" height="528" alt="image" src="https://github.com/user-attachments/assets/10043c42-9250-453b-b865-b542770eb73a" />


Strapi application successfully deployed on AWS EC2 using Terraform modules.

































