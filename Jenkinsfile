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
        sh 'docker run  --name postgres_jenkins -d -p 5433:5432 -e POSTGRES_PASSWORD=password -e POSTGRES_USER=postgres -e POSTGRES_DB=jenkins  --network dbengine_apihook  postgres_jenkins'
      }
    }
  }
  parameters {
    string(defaultValue: 'false', description: 'visibilidad por organizacion', name: 'Organizacion')
  }
}