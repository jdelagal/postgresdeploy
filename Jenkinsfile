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
<<<<<<< HEAD
    /*
    stage('Kill') {
      steps {
        sh 'docker stop postgres_jenkins'
        sh 'docker rm postgres_jenkins'
      }
    }
    */
    stage('Connect') {
      steps {
        sh "docker exec -i postgres_jenkins bash -c ./script.sh ${params.Organizacion}"
        sh 'ls -ltr'
        sh 'pwd'
      }
    }
=======
>>>>>>> 963313361aee03903d3f2c7a56b759a2765e870b
  }
  parameters {
    string(defaultValue: 'false', description: 'visibilidad por organizacion', name: 'Organizacion')
  }
}