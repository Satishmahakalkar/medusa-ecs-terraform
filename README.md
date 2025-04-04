 Deploying Medusa Backend on AWS ECS Fargate using Terraform + CI/CD with GitHub Actions
💻 On Ubuntu OS



Step 1: Ubuntu Setup
🔧 Install Required Tools:
bash
Copy
Edit
sudo apt update
sudo apt install -y unzip curl git docker.io awscli
🔧 Install Terraform:
bash
Copy
Edit
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update
sudo apt install terraform -y
🔧 Check Versions:
bash
Copy
Edit
terraform -v
aws --version
docker -v
git --version
✅ Step 2: AWS CLI Setup
bash
Copy
Edit
aws configure



Step 6: Initialize Terraform
bash
Copy
Edit
cd terraform
terraform init
terraform plan
terraform apply -auto-approve



Step 7: GitHub Setup
Create a public repo:
👉 Go to GitHub

Clone it locally:

bash
Copy
Edit
cd ..
git init
git remote add origin https://github.com/<your-username>/medusa-terraform-deploy.git
git add .
git commit -m "Initial commit"
git push -u origin main

