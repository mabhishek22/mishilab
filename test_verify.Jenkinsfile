pipeline {
  agent {
    label 'webapp'
  }

  stages {
    stage("Unit Testing") {
      steps {        
            container('MVN') {
            sh "mvn test"
            sh "echo unit testing completed"
        }
      }
    }
     stage("Deploy") {
          stages {
            stage('Docker Build and Run') {
              steps {
                container('docker') {
                    sh '''
                    docker build -t abhi/deploy/nginx-webapp:v1 .
                    docker run -d -p 443:443 abhi/deploy/nginx-webapp:v1           
                    echo nginx webapp is running
                    echo "hit www.abctest.com  to test the app UI"
                    
                    '''       
    
                    
                        }
                    }
                }
            }
        }
    }
}