pipeline {
  agent {
    docker {
      image 'library/erlang:19.3'
    }
  }
  
  stages {
    stage('Build') {
      steps {
        sh 'erlc -DTEST simple_math.erl'
      }
    }
    stage('Test') {
      steps {
        sh 'erl -noshell -s simple_math test -s init stop'
      }
    }
  }
}
