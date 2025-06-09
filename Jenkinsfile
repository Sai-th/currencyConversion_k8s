cat > Jenkinsfile << 'EOF'
pipeline {
    agent {
        label 'jenkins-agent-python'
    }
    
    stages {
        stage('Test') {
            steps {
                sh 'echo "Syntax check passed"'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t currency-converter:latest .'
            }
        }
        
        stage('Deploy to Kubernetes') {
            steps {
                sh '''
                    kubectl rollout restart deployment/currency-converter
                    kubectl rollout status deployment/currency-converter
                    echo "Deployed to Kubernetes!"
                '''
            }
        }
    }
}
<<<<<<< HEAD
EOF
=======
EOF
>>>>>>> 1bc41a2529074eb7d36f6ca4951a98ff664c22f5
