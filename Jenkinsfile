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
      sh'./comp.sh build --no-daemon'
      sh'scp intro1 /home/centos/suneelcobolmasterbranch/'
          }
                        }
  }
 }
