pipeline {
  agent any
  stages {
    stage('step1') {
      steps {
        echo 'Starting the pipeline'
        input(message: 'Deseja continuar?', ok: '1', id: '0')
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
        stage('error') {
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