pipeline {
  agent any
  stages {
    stage('Connect') {
      steps {
        sh 'docker exec -i postgres_jenkins bash -c su - postgres psql'
        sh 'ls'
        sh 'pwd'
      }
    }
  }
  parameters {
    string(defaultValue: 'false', description: 'visibilidad por organizacion', name: 'Organizacion')
  }
}