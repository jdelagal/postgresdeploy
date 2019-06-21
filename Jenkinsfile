pipeline {
  agent any
  stages {
    stage('Create') {
      steps {
        sh '''
        docker exec -i  postgresdeploy_jenkins_1 psql -U postgres -c "CREATE TABLE test_3(
   user_id VARCHAR (10)  PRIMARY KEY);"
       '''
      }
    }
  }
  parameters {
    string(defaultValue: 'false', description: 'visibilidad por organizacion', name: 'Organizacion')
  }
}