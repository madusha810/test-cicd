pipeline {
    agent {
        docker {
            image 'docker:stable'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    environment {
        DOCKER_IMAGE_NAME = 'html-app' // Change to your image name
    }
    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/madusha810/test-cicd.git', branch: 'main' // Update URL
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(DOCKER_IMAGE_NAME)
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    sh "docker run -d -p 80:80 --name ${DOCKER_IMAGE_NAME} ${DOCKER_IMAGE_NAME}"
                }
            }
        }
    }
    // post {
    //     always {
    //         script {
    //             sh "docker stop ${DOCKER_IMAGE_NAME} || true"
    //             sh "docker rm ${DOCKER_IMAGE_NAME} || true"
    //         }
    //     }
    // }
}
