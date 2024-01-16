pipeline {
    agent any
    environment {
        // Define any environment variables needed for the pipeline
        IMAGE_NAME = 'service-discovery'
        CONTAINER_NAME = 'service-discovery-container'
        DOCKERHUB_ACCESS_TOKEN = 'dckr_pat_YMgSJv-eWyBCuALq1rnpzq4Ps8U'  // Use the credentials ID
    }
    stages {
        stage('Build') {
            steps {
                script {
                    echo 'Building...'
//                    bat 'mvn clean compile package -DskipTests'
                    sh 'mvn clean compile package -DskipTests'
                }
            }
        }
        stage('Testing') {
            steps {
                script {
                    echo 'Testing...'
                }
            }
        }
//        stage('Dockerize') {
//            steps {
//                script {
//                    echo 'Dockerizing...'
//                    sh "docker build -t ${IMAGE_NAME} ."
//                }
//            }
//        }
//        stage('Login to Docker Hub') {
//            steps {
//                script {
//                    echo 'Logging in to Docker Hub...'
//                    sh "docker login -u _token -p ${DOCKERHUB_ACCESS_TOKEN} docker.io"
//                }
//            }
//        }
//        stage('Run Container') {
//            steps {
//                script {
//                    echo 'Running Docker container...'
//                    // Run the Docker container
//                    sh "docker run -p 8081:8081 --name ${CONTAINER_NAME} -d ${IMAGE_NAME}"
//                }
//            }
//        }
//        stage('Deploy') {
//            steps {
//                script {
//                    echo 'Deploying...'
//                    sh "docker push ${IMAGE_NAME}"
//
//                    // Add deployment steps (e.g., Kubernetes deployment) if applicable
//                }
//            }
//        }
    }
}



//pipeline {
//    agent any
//    stages {
//        stage('Build') {
//            steps {
//                echo 'Building..'
//            }
//        }
//        stage('Test') {
//            steps {
//                echo 'Testing..'
//            }
//        }
//        stage('Deploy') {
//            steps {
//                echo 'Deploying....'
//            }
//        }
//    }
//}
