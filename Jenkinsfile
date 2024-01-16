pipeline {
    agent any
    environment {
        // Define any environment variables needed for the pipeline
        IMAGE_NAME = 'service-discovery'
        CONTAINER_NAME = 'service-discovery-container'
//        DOCKERHUB_ACCESS_TOKEN = 'dckr_pat_YMgSJv-eWyBCuALq1rnpzq4Ps8U'  // Use the credentials ID
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
        stage('Dockerize') {
            steps {
                script {
                    echo 'Dockerizing...'
                    sh "docker build -t ${IMAGE_NAME} ."
                }
            }
        }

        stage('Push image') {
            steps {
                script {
                    echo 'Pushing...'
                    withCredentials( \
                                 [string(credentialsId: 'dockerhub_amina',\
                                 variable: 'dockerhub_amina')]) {
                        sh "docker login -u aminabakkali -p ${dockerhub_amina}"
                        sh "docker push aminabakkali/${IMAGE_NAME}"
                    }
                }

            }
        }



//        stage('Login to Docker Hub') {
//            steps {
//                script {
//                    echo 'Logging in to Docker Hub...'
//                    sh "docker login -u _token -p ${DOCKERHUB_ACCESS_TOKEN} docker.io"
//                }
//            }
//        }
//
//        stage('Deploy') {
//            steps {
//                script {
//                    echo 'Deploying...'
//                    sh "docker push ${IMAGE_NAME}"
//                }
//            }
//        }
    }
}

