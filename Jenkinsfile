pipeline {

  environment {
    registry = "192.168.93.103:5000/justme/myweb"
    dockerImage = ""
  }

  agent any

  stages {

    stage('Checkout Source') {
      steps {
        git 'https://github.com/shark84/java.git'
      }
    }

  stage('compile code') {
      steps{
        script {
          sh 'mvn -DskipTests clean package'
        }
      }
    }
stage('copy war ') {
      steps{
        script {
          sh 'cp ./webapp/target/webapp.war ./webapp.war'
        }
      }
    }
    stage('Build image') {
      steps{
        script {
          sh 'docker build -t mywebtom .'
        }
      }
    }


    stage('sleep') {
      steps{
        script {
          sh 'sleep 2'
        }
      }
    }

    

    stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "myweb.yaml", kubeconfigId: "mykubeconfig")
        }
      }
    }

  }

}
