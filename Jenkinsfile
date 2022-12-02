pipeline {
    agent { label 'UBUNTU' }
    stages {
        stage('learning') {
            steps {
                git url: 'https://github.com/longflewtinku/docker-1.git', 
                    branch: 'main'
            }
        }    
        stage('Example Build') {
            steps {
                sh 'docker image build -t one:1.0 .'   
            }
        }
    }
}
