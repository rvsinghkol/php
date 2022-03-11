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
        sh 'cd /var/lib/jenkins/workspace/docker'
        sh 'docker-compose -f phpapache.yml up -d'
      }
    }
  }
}
