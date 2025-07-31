pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/HARSHITHA-G-M/zen-ci-java.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t zen-ci-java .'
            }
        }

        stage('Docker Run') {
            steps {
                sh 'docker run -d --name zen-app -p 8080:8080 zen-ci-java'
            }
        }
    }
}

