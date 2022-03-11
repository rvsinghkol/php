pipeline{
  agent none
  stages{
    stage('test'){
      agent any
      steps{
        sh 'echo this is test pipeline'
      }
    }
    stage('docker image'){
      agent any
      steps{
        sh label: '', script: '''
        cd /root/php
        docker-compose -f phpapache.yml up -d'''
      }
    }
  }

}
