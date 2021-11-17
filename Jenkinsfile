pipeline {
    agent any
    stages {
        stage('Initialize') {
            steps{
                script{
                    checkout scm
                    sh "git checkout main"

                }              

            }           
           
        }
        stage("Docker build") {
            steps {
                script {
                    app = docker.build("praveendandu02/new-train-schedule")
                    app.inside {
                        sh 'echo $(curl localhost:8080)'
                    }
                }
            }
        }
    }
}