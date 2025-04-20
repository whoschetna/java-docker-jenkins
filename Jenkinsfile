pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo 'Cloning the repo...'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('java-hello-app')
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('java-hello-app').run()
                }
            }
        }
    }
}
