pipeline {
  agent any
  stages {
    stage('Connect') {
      steps {
        sh 'docker exec -t postgres_jenkins bash -c ./script.sh'
        sh 'sudo ./script.sh'
        sh 'pwd'
      }
    }
  }
  parameters {
    string(defaultValue: 'false', description: 'visibilidad por organizacion', name: 'Organizacion')
  }
}