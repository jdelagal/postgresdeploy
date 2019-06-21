pipeline {
  agent any
  stages {
    stage('Echo') {
      steps {
        echo "Hello ${params.sql}"
      }
    }
    /*
    stage('Create') {
      steps {
        sh '''
        docker exec -i  postgresdeploy_jenkins_1 psql -U postgres -c "CREATE TABLE test_3(
   user_id VARCHAR (10)  PRIMARY KEY);"
       '''
      }
    }
    */
    stage('SQL') {
      steps {
        sh '''
        docker exec -i  postgresdeploy_jenkins_1 psql -U postgres -c ${params.sql}"
       '''
      }
    }
  }
  parameters {
    string(defaultValue: 'false', description: 'visibilidad por organizacion', name: 'Organizacion')
    string(defaultValue: 'false', description: 'Remote SQL', name: 'sql')
  }
}