pipeline {
  agent { dockerfile true }
  stages {
    stage('Test') {
      steps {
        sh '''
          curl --version
        '''
      }
    }
    stage('Manual Approval') {
      steps {
        input("Do you want to proceed with deploying to production?")
        }
      }
