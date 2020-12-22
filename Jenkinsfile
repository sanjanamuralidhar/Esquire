pipeline {
  agent any
  stages {
    stage('Checking workspace') {
      steps {
        sh 'pwd'
      }
    }

    stage('change api') {
      steps {
        sh 'sed -i \'s+34.68.14.183+34.75.39.132+g\' $PWD/openapi/lib/api.dart'
      }
    }

    stage('build apk') {
      steps {
        sh 'flutter build apk'
        sh 'sudo cp -f build/app/outputs/apk/release/app-release.apk /home/jenkins/customer-app'
      }
    }

    stage('run web server') {
      parallel {
        stage('run web server') {
          steps {
            sh 'flutter run -d web-server --web-hostname 10.142.0.2 --web-port 8085'
          }
        }

        stage('stop previous service') {
          steps {
            sh 'sudo kill -9 `sudo lsof -t -i :8085`'
          }
        }

      }
    }

  }
}