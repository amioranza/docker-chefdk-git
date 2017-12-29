pipeline {
  agent any
  stages {
    stage('step1') {
      steps {
        echo 'Starting the pipeline'
      }
    }
    stage('step2') {
      steps {
        pwd(tmp: true)
      }
    }
    stage('step3') {
      steps {
        isUnix()
      }
    }
    stage('finish') {
      steps {
        echo 'This is the end'
      }
    }
  }
  environment {
    env = 'build'
  }
}