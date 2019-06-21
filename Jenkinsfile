pipeline {
  agent any
  stages {
    /*
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

    

    stage('Connect') {
      steps {
        sh 'docker exec -i postgres_jenkins bash -c ./script.sh'
      }
    }

    
    stage('Kill') {
      steps {
        sh 'docker stop postgres_jenkins'
        sh 'docker rm postgres_jenkins'
      }
    }
    */
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