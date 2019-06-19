pipeline {
  agent any
  stages {
    stage('Connect') {
      steps {
        sh 'docker exec -i postgres_jenkins bash -c chmod 775 ./script.sh'
        sh 'sudo ./script.sh'
        sh 'pwd'
      }
    }
  }
  parameters {
    string(defaultValue: 'false', description: 'visibilidad por organizacion', name: 'Organizacion')
  }
}