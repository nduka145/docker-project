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
