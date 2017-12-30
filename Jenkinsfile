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
        sh 'export VERSION=3'
      }
    }
    stage('step3') {
      steps {
        isUnix()
      }
    }
    stage('finish') {
      parallel {
        stage('finish') {
          steps {
            echo 'This is the end'
          }
        }
        stage('') {
          steps {
            sh 'echo $VERSION'
          }
        }
      }
    }
  }
  environment {
    env = 'build'
  }
}