pipeline {
    agent { label 'OPEN' }
    stages {
        stage('learning') {
            steps {
                git url: 'https://github.com/longflewtinku/docker-1.git', 
                    branch: 'main'
            }
        }    
        stage('Example Build') {
            steps {
                sh """terraform init
                      terraform apply -var-file="dev.tfvars" -auto-approve"""   
            }
        }
    }
}
