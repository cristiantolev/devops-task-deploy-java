pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout the application repo
                git branch: 'master', url: 'https://github.com/cristiantolev/devops-task-deploy-java.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build the Docker image
                script {
                    docker.build("kristolev21/javaapp:${env.BUILD_NUMBER}")
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                // Push the Docker image to Docker Hub
                script {
                    docker.withRegistry('https://index.docker.io/v1/', '<dockerhub credentials ID>') {
                        docker.image("kristolev21/javaapp:${env.BUILD_NUMBER}").push()
                    }
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
               sh "kubectl apply -f k8sDeployment.yaml" 
             //   kubernetesDeploy(configs: 'k8sDeployment.yaml',)
            }
        }
        stage('Expose Application') {
             steps {
        
                sh "kubectl apply -f k8sService.yaml"
                   }
         }

}
}