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
        sh 'docker-compose -f docker-compose-pgadmin.yml up -d'
      }
    }
    
    stage('Kill') {
      steps {
        sh 'docker stop docker_jenkins_1'
        sh 'docker rm docker_jenkins_1'
      }
    }
  }
  parameters {
    string(defaultValue: 'false', description: 'visibilidad por organizacion', name: 'Organizacion')
  }
}