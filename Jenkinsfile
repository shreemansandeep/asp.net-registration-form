pipeline{
  agent any
  
    stages{
      
      stage("Git Checkout"){
        steps{
              git credentialsId: 'GitHubCred', url: 'https://github.com/shreemansandeep/asp.net-registration-form.git'
        }
      }
      
      stage("Restore"){
            steps{
                  sh 'docker image build -t $JOB_NAME:v1.$BUILD_ID .'
                  sh 'docker image tag $JOB_NAME:v1.$BUILD_ID dockersandheep/$JOB_NAME:v1.$BUILD_ID'
            }
            }
      
    }
}
