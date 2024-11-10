pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone the repository from GitHub
                git 'https://github.com/Sahil3105/10thnovpracticaljen.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the PHP-Apache container image
                    docker.build('php-app')
                }
            }
        }
        
        stage('Deploy with Docker Compose') {
            steps {
                // Run Docker Compose to bring up the application and database
                sh 'docker-compose down'  // Stop any existing containers
                sh 'docker-compose up -d' // Start containers in detached mode
            }
        }
    }
}
