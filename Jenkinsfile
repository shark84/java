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

    stage('Build image') {
      steps{
        script {
          sh 'docker build -t myweb .'
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
