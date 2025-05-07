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
        withMaven(globalMavenSettingsConfig: '', jdk: '/usr/lib/jvm/java-17-amazon-corretto.x86_64/bin/java', maven: '/usr/share/apache-maven/bin/mvn', mavenSettingsConfig: '', traceability: true)
         {
            sh 'mvn compile'
          }
      }
    }
  }
}

    
