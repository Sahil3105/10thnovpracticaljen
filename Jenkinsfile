pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'php-app'
        REPO_URL = 'https://github.com/Sahil3105/10thnovpracticaljen.git'
        GIT_BRANCH = 'main'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: "${GIT_BRANCH}", url: "${REPO_URL}"
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    if (!fileExists('Dockerfile')) {
                        error "Dockerfile not found!"
                    }
                    echo "Building Docker image ${DOCKER_IMAGE}..."
                    docker.build("${DOCKER_IMAGE}")
                }
            }
        }

        stage('Deploy with Docker Compose') {
            steps {
                script {
                    if (!sh(script: 'command -v docker-compose', returnStatus: true)) {
                        error "docker-compose is not installed!"
                    }

                    echo "Stopping existing containers..."
                    sh 'docker-compose down || true'

                    echo "Starting containers with docker-compose..."
                    sh 'docker-compose up -d'
                }
            }
        }
    }

    post {
        always {
            echo "Pipeline finished."
        }

        success {
            echo "Build and deployment were successful!"
        }

        failure {
            echo "Build or deployment failed. Check logs for details."
        }
    }
}
