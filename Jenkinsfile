pipeline {
    agent any
    
    environment {
        DEPLOY_DIR = '/var/www/html'  // Path where HTML file will be deployed
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout your code from Git repository
                git 'https://github.com/your-repository/your-project.git'
            }
        }

        stage('Build') {
            steps {
                // Example: You can add HTML minification or other tasks
                script {
                    echo 'Building the HTML file (if needed)'
                    // For example, you could use a tool like `html-minifier` to minify the HTML
                    // sh 'html-minifier index.html --output index.min.html'
                }
            }
        }

        stage('Deploy') {
            steps {
                // Example: Deploy the HTML file to a server
                script {
                    echo "Deploying HTML file to ${DEPLOY_DIR}"
                    // You can use scp, rsync, or other deployment tools depending on your server
                    // Example: sh 'scp index.html user@your-server:${DEPLOY_DIR}'
                }
            }
        }

        stage('Test') {
            steps {
                // You can add testing steps if needed, e.g., validating the HTML file
                echo 'Running HTML validation tests'
                // Example: you can use a tool like `htmlhint` to validate HTML files
                // sh 'htmlhint index.html'
            }
        }
    }

    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Something went wrong with the deployment.'
        }
    }
}
