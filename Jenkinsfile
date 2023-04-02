pipeline {
    agent any

    stages {
        stage('Cloning') {
            steps {
                git url: 'https://github.com/keithnorgbey/webserver.git', branch: 'main'
               
            }
        }
          stage('Building Image') {
            steps {
               sh 'docker build -t keithnorgbey/keith_lab:latest .'
               
            }
        }
          stage('Run container') {
            steps {
               sh 'docker run --name keithsite -p 8081:8080 keithnorgbey/keith_lab:latest'
            }
        }
    }

}
