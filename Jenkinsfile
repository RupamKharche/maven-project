pipelin
{
  agent any
  stages
  {
    stage('SCM Chekout')
    {
      steps
      {
        git branch: 'master', url: 'https://github.com/RupamKharche/maven-project.git'
      }
    }
    stage ('Compile')
    {
      steps
      {
        withMaven(globalMavenSettingsConfig: '', jdk: '', maven: '', mavenSettingsConfig: '', traceability: true)
         {
            sh 'mvn compile'
          }
      }
    }
  }
}

    
