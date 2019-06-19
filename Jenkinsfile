pipeline {
  agent any
  stages {
    stage('Connect') {
      steps {
        sh 'docker exec -i postgres_jenkins bash -c "su - postgres"'
        sh 'docker exec -i postgres_jenkins bash -c "psql"'
        sh 'pwd'
      }
    }
  }
  parameters {
    string(defaultValue: 'false', description: 'visibilidad por organizacion', name: 'Organizacion')
  }
}