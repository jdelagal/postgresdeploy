pipeline {
  agent any
  stages {
    stage('Example') {
      steps {
        echo "Hello ${params.Organizacion}"
      }
    }
    stage('Build') {
      environment {
        CI = 'true'
      }
      steps {
        sh 'docker build -t postgres_jenkins -f Dockerfile .'
      }
    }
    stage('Run') {
      steps {
        sh 'docker run -d -p 5433:5432 -e POSTGRES_PASSWORD=password -e POSTGRES_USER=postgres -e POSTGRES_DB=jenkins  postgres_jenkins'
      }
    }
    /*
    stage('Kill') {
      steps {
        sh 'docker stop docker_jenkins_1'
        sh 'docker rm docker_jenkins_1'
      }
    }
    */
  }
  parameters {
    string(defaultValue: 'false', description: 'visibilidad por organizacion', name: 'Organizacion')
  }
}