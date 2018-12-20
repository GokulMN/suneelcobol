pipeline {
  agent any
  stages {
    stage ('checkout') {
    steps {
     checkout scm
          }
                       }
   stage ('Build')     {
    steps {
     echo 'Running Build Automation'
        sh 'docker build -t gokulmn/proj_col .'
        sh 'sudo docker container run -p 3000:8090 -v /var/run/docker.sock:/var/run/docker.sock -d gokulmn/proj_col'
          }
                        }
  }
 }
