🚀 DevOps Learning Lab
📌 Project Overview

This project is a hands-on DevOps learning lab built using a Windows environment with WSL (Ubuntu), Git, GitHub, Docker Desktop, and Makefile automation.

The objective was to simulate a real-world DevOps workflow by setting up a development environment, managing source code with Git, containerizing an application with Docker, automating repetitive tasks, and preparing the project for future CI/CD implementation.

This repository demonstrates practical experience with modern DevOps tools and workflows commonly used in software development and cloud environments.

👤 Author

Ganiyat Adebayo

Aspiring DevOps Engineer with a background in customer support, data analysis, and cloud technologies.

🎯 Project Objectives

This project was created to gain practical experience in:

Linux administration using WSL Ubuntu
Git and GitHub workflows
Docker containerization
Development environment setup
Release tagging and version control
Build automation using Makefile
DevOps best practices
🛠️ Technologies Used
Windows 10
WSL 2 (Ubuntu)
Git
GitHub
Docker Desktop
Node.js
Makefile
Curl (via Winget)
📊 Skills Demonstrated
Version Control with Git
GitHub Repository Management
Linux Command Line
Docker Image Creation
Container Management
Build Automation
Release Management
Troubleshooting and Environment Setup
DevOps Workflow Fundamentals
⚙️ Environment Setup (Windows + WSL)
System Update (Windows tools)
winget upgrade --all
Install Required Tools
winget install -e --id Git.Git
winget install -e --id Docker.DockerDesktop
winget install -e --id curl.curl
Verify Installation
docker --version
git --version
👤 Git Configuration
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
git config --list
🌐 GitHub Repository Setup
Go to GitHub
Create new repository → devops-lab
Make it Public
Do NOT initialize README
Copy repository URL
🧪 Project Setup
Create Project Directory
mkdir devops-lab
cd devops-lab
Initialize Git
git init
git branch -M main
Create Application
printf 'console.log("Hello DevOps World");\n' > app.js
🔧 Git Workflow (Version Control)
Initial Commit
git add .
git commit -m "Initial commit"
Version Update Simulation
echo 'v2' >> app.js

git add .
git commit -m "feat: bump to v2"

git log --oneline
🔗 Connect to GitHub
git remote add origin https://github.com/YOUR-USERNAME/devops-lab.git
git remote -v
🐳 Docker Containerization
Create Dockerfile
printf 'FROM node:18-alpine\nCOPY app.js .\nCMD ["node","app.js"]\n' > Dockerfile
Build Image
docker build -t devops-hello .
Run Container
docker run --rm devops-hello
⚙️ Automation with Makefile
Create Makefile
printf 'build:\n\tdocker build -t devops-hello .\nrun:\n\tdocker run --rm devops-hello\nclean:\n\tdocker rmi devops-hello\n' > Makefile
Run Automation
make build
make run
make clean
🏷️ Release Management

A release tag was created to mark a stable version of the project.

Commit Final Changes
git add .
git commit -m "feat: add Makefile automation"
Create Release Tag
git tag -a v1.0.0 -m "First stable release"
Verify Tag
git log --oneline --decorate
🚀 Publish to GitHub
git push -u origin main
git push origin v1.0.0



🔍 Challenges Encountered
Git not recognized
Fixed by installing Git and restarting terminal
Docker permission issues
Resolved by verifying WSL integration and Docker Desktop
VS Code WSL confusion
Fixed by explicitly opening project in Ubuntu WSL environment
📈 Future Improvements
GitHub Actions CI/CD pipeline
Docker Hub image publishing
AWS deployment
Kubernetes orchestration
Terraform Infrastructure as Code
Monitoring and logging
💼 Recruiter Takeaway

This project demonstrates hands-on DevOps experience with:

Linux (WSL Ubuntu)
Git & GitHub workflows
Docker containerization
Build automation using Makefile
Release versioning
Environment troubleshooting

It serves as a foundational DevOps portfolio project and prepares for advanced CI/CD and cloud deployment workflows.

📜 Version

Current Release: v1.0.0
Last Updated: June 2026

⭐ Final Note

This project was developed as a practical DevOps learning exercise combining Windows tools and Linux (WSL Ubuntu) to simulate a real-world engineering workflow.
Last Updated: June 2026

⭐ Final Note

This project was developed as a practical DevOps learning exercise combining Windows tools and Linux (WSL Ubuntu) to simulate a real-world engineering workflow.s-based tools and industry-standard practices.
