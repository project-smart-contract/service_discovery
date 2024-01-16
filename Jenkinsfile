pipeline {
    agent any
    environment {
        // Define any environment variables needed for the pipeline
        IMAGE_NAME = 'service-discovery'
        CONTAINER_NAME = 'service-discovery-container'
        DOCKERHUB_CREDENTIALS = credentials('dockerhub_amina')
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
                    sh "docker build -t aminabakkali/${IMAGE_NAME} ."
                }
            }
        }

        stage('Login') {
            steps {
                echo 'Login...'
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
//

            }
        }
        stage('Push') {
            steps {
                script {
                    echo 'Pushing...'
                    sh "docker push aminabakkali/${IMAGE_NAME}"
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

