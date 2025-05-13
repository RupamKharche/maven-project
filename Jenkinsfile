pipeline
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
    stage ('package')
     {
       steps
       {
        withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MAVEN_HOME', mavenSettingsConfig: '', traceability: true) 
        
          {
             sh 'mvn package'
           }
     }
   }
  }
}


    
