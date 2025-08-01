pipeline {
    agent {
        docker {
            image 'maven:3.9.6-eclipse-temurin-17'
            args '-v /root/.m2:/root/.m2' // optional: caches Maven dependencies
        }
    }

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
                sh '''
                    docker rm -f zen-app || true
                    docker run -d --name zen-app -p 8080:8080 zen-ci-java
                '''
            }
        }
    }
}

