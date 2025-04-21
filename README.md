### 🚀 CI/CD Docker App

A fully automated CI/CD pipeline using GitHub Actions and Docker, deploying a Node.js application seamlessly. This setup ensures that every push to the main branch triggers tests, builds a Docker image, and pushes it to Docker Hub.

### 🐳 Docker Container Running Locally


### 🛠️ Features
Continuous Integration: Automated testing and building on every push.

Continuous Deployment: Docker image pushed to Docker Hub upon successful build.

Dockerized Application: Easy to run and deploy anywhere.

Local Deployment: Run the application locally using Docker.

### 📦 Prerequisites
Docker installed on your machine.

Node.js (for local development and testing).

GitHub account with access to this repository.

### 🚀 Getting Started
### 1. Clone the Repository
```bash
git clone https://github.com/saivijayy/ci-cd-docker-app.git
cd ci-cd-docker-app
```
### 2. Run the Application Locally
```bash
docker run -d -p 3000:3000 saivjayy/ci-cd-app
Access the application at http://localhost:3000
```
### 🔄 CI/CD Workflow Overview
The GitHub Actions workflow (.github/workflows/ci-cd-pipeline.yml) performs the following steps:

Checkout Code: Retrieves the latest code from the repository.

Set up Docker: Initializes Docker Buildx for building images.

Login to Docker Hub: Authenticates using secrets stored in GitHub.

Build Docker Image: Builds the Docker image for the application.

Push to Docker Hub: Pushes the built image to Docker Hub.
### 🔐 Secrets Configuration
Ensure the following secrets are set in your GitHub repository:
```
DOCKERHUB_USERNAME: Your Docker Hub username.

DOCKERHUB_TOKEN: Your Docker Hub access token or password.
```
### 📁 Project Structure
```bash
ci-cd-docker-app/
├── .github/
│   └── workflows/
│       └── ci-cd-pipeline.yml
├── Dockerfile
├── docker-compose.yml
├── app/
│   └── index.js
├── package.json
└── README.md
