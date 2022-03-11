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
        cd /var/lib/jenkins/workspace/docker
        docker-compose -f phpapache.yml up -d'''
      }
    }
  }
}
