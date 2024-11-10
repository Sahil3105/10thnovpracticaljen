pipeline {
    agent any

    environment {
        // Define Docker image name
        DOCKER_IMAGE = 'php-app'
        // Define the GitHub repository URL
        REPO_URL = 'https://github.com/Sahil3105/10thnovpracticaljen.git'
        // Define the branch you want to build
        GIT_BRANCH = 'main'  // Make sure the branch is correct
    }

    stages {
        stage('Checkout') {
            steps {
                // Clone the repository from GitHub
                git branch: "${GIT_BRANCH}", url: "${REPO_URL}"
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Ensure that Docker is installed on the Jenkins agent
                    if (!fileExists('Dockerfile')) {
                        error "Dockerfile not found!"
                    }
                    // Build the Docker image
                    echo "Building Docker image ${DOCKER_IMAGE}..."
                    docker.build("${DOCKER_IMAGE}")
                }
            }
        }

        stage('Deploy with Docker Compose') {
            steps {
                script {
                    // Ensure docker-compose is installed on the Jenkins agent
                    if (!sh(script: 'command -v docker-compose', returnStatus: true)) {
                        error "docker-compose is not installed!"
                    }

                    // Stop any existing containers before starting new ones
                    echo "Stopping existing containers..."
                    sh 'docker-compose down'

                    // Start containers in detached mode using docker-compose
                    echo "Starting containers with docker-compose..."
                    sh 'docker-compose up -d'
                }
            }
        }
    }

    post {
        always {
            // Clean up or handle post-build actions
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
