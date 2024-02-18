pipeline {
  agent { dockerfile true }
  stages {
    stage('Test') {
      steps {
        sh '''
          curl --version
          node --version
          npm --version
        '''
      }
    }
    stage('Manual Approval') {
      steps {
        input("Do you want to proceed with deploying to production?")
        }
      }
    stage('upload image to dockerhub') {
      steps {
        sh '''
          curl --version
          node --version
          npm --version
        '''
      }
    }
  }
}
