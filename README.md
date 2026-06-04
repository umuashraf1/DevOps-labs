🚀 DEVOPS LEARNING LAB 
# 🚀 DevOps Learning Lab

A hands-on DevOps project demonstrating a complete workflow using Windows tools (PowerShell + WSL + Docker Desktop + Git + GitHub).

This project simulates real-world DevOps practices: environment setup, version control, containerization, automation, tagging, and deployment preparation.

---

## 👤 Author
- **Name:** Ganiyat Adebayo  
- **Role:** Aspiring DevOps Engineer  
- **Focus Areas:** Cloud Infrastructure, Containerization, Automation, CI/CD

---

# 🎯 Project Goals

This project was built to practice:

- Setting up a Windows-based DevOps environment
- Installing and managing tools using `winget`
- Using Git for version control
- Running Docker via Docker Desktop
- Automating tasks using Makefile
- Simulating real deployment workflows

---

#  1. System Preparation (Windows)

## 📌 Purpose
Ensure all system tools are updated and ready for development.

## 💻 Command

```powershell
winget upgrade --all
 2. Install Core Tools (Windows)
📌 Purpose

Install essential DevOps tools using Windows Package Manager.

Git → version control
Docker Desktop → container engine
Curl → HTTP tool
💻 Commands
winget install -e --id Git.Git
winget install -e --id Docker.DockerDesktop
winget install -e --id curl.curl
✔ Verify Installation
git --version
docker --version
👤 3. Configure Git Identity
📌 Purpose

Set global identity for tracking commits.

💻 Commands
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
git config --list
🌐 4. GitHub Repository Setup
📌 Purpose

Create a remote repository for backup and collaboration.

Steps
Create repository on GitHub
Name: devops-lab
Keep it public
Copy repository URL
🧪 5. Initialize Project
📌 Purpose

Create local project and connect it to GitHub.

💻 Commands
mkdir devops-lab
cd devops-lab
Create application
echo console.log("Hello DevOps"); > app.js
Initialize Git
git init
git branch -M main
git add .
git commit -m "initial project setup"
Connect to GitHub
git remote add origin https://github.com/YOUR-USERNAME/devops-lab.git
git remote -v
🐳 6. Containerize Application
📌 Purpose

Package application using Docker for consistent execution.

💻 Create Dockerfile
@"
FROM node:18-alpine
COPY app.js .
CMD ["node","app.js"]
"@ > Dockerfile
Build Image
docker build -t devops-app .
Run Container
docker run --rm devops-app
🚀 7. Version Update Simulation
📌 Purpose

Simulate application updates using Git.

💻 Commands
echo version 2 >> app.js
git add .
git commit -m "update: second version added"
git log --oneline
⚙️ 8. Automation (Makefile)
📌 Purpose

Simplify Docker commands using automation.

💻 Create Makefile (Windows safe)
@"
build:
	docker build -t devops-app .

run:
	docker run --rm devops-app

clean:
	docker rmi devops-app
"@ > Makefile
Run Automation
make build
make run
make clean
🏷️ 9. Release Tagging
📌 Purpose

Mark stable version of project.

💻 Commands
git add .
git commit -m "finalize automation setup"
git tag -a v1.0.0 -m "First stable DevOps release"
git log --oneline --decorate
🚀 10. Push to GitHub
💻 Commands
git push -u origin main
git push origin v1.0.0
📊 Skills Demonstrated

✔ Windows DevOps environment setup
✔ Git version control workflow
✔ GitHub remote repository management
✔ Docker containerization
✔ Makefile automation
✔ Release tagging and versioning

💼 Why This Project Matters

This project demonstrates real-world DevOps fundamentals:

Reproducible environments
Container-based application delivery
Version-controlled development workflow
Automation of repetitive tasks
Release management practices
📈 Future Improvements
Add CI/CD using GitHub Actions
Deploy container to cloud (AWS / Azure)
Replace Node script with REST API
Add monitoring and logging
Add Kubernetes deployment
🎯 Conclusion

This project represents a complete DevOps workflow from setup to containerized deployment, built using Windows-based tools and industry-standard practices.
