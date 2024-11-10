pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'php-app'
        REPO_URL = 'https://github.com/Sahil3105/10thnovpracticaljen.git'
        GIT_BRANCH = 'main'
        DOCKER_COMPOSE_PATH = '/usr/local/bin/docker-compose'  // Specify the path explicitly
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
                    // Ensure docker-compose is installed and accessible
                    def dockerComposeInstalled = sh(script: "command -v ${DOCKER_COMPOSE_PATH}", returnStatus: true) == 0
                    if (!dockerComposeInstalled) {
                        error "docker-compose is not installed or not in the expected location!"
                    }

                    // Stopping any existing containers
                    echo "Stopping existing containers..."
                    sh "${DOCKER_COMPOSE_PATH} down || true"  // Gracefully handles if no containers are running

                    // Starting containers in detached mode
                    echo "Starting containers with docker-compose..."
                    sh "${DOCKER_COMPOSE_PATH} up -d"
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
