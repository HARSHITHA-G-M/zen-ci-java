pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/HARSHITHA-G-M/zen-ci-java.git'
            }
        }

        stage('Build & Test in Maven Container') {
            steps {
                script {
                    docker.image('maven:3.9.6-eclipse-temurin-17').inside {
                        sh 'mvn clean package'
                        sh 'mvn test'
                    }
                }
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t zen-ci-java .'
            }
        }

        stage('Docker Run') {
            steps {
                sh '''
                    docker rm -f zen-app || true
                    docker run -d --name zen-app -p 8080:8080 zen-ci-java
                '''
            }
        }
    }
}

