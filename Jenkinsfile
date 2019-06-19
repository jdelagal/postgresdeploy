pipeline {
  agent any
  stages {
    stage('Connect') {
      steps {
        sh 'docker exec -ti postgres_jenkins bash'
        sh 'sudo ./script.sh'
        sh 'pwd'
      }
    }
  }
  parameters {
    string(defaultValue: 'false', description: 'visibilidad por organizacion', name: 'Organizacion')
  }
}