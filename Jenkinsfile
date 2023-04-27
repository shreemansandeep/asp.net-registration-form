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
                  bat "dotnet restore"
            }
            }
      
    }
}
