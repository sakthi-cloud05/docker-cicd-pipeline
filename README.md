# docker-cicd-pipeline
docker-cicd-pipeline/
├── README.md
├── app/
│   └── index.html               (Simple web app or microservice file)
├── Dockerfile                   (Builds lightweight Nginx/Node/Python container image)
├── .github/
│   └── workflows/
│       └── deploy.yml           (GitHub Actions pipeline: Build Docker image → Push to ECR/DockerHub)
└── screenshots/
    └── github-actions-success.png
