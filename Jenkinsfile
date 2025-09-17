pipeline
{
  agent {label 'maven'}
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
   stage ('depolyment')
   {
    steps
    {
      sshagent(['DevCICD'])
       {
          sh 'tHostKeyChecking=nscp -o Strico webapp/target/webapp.war ec2-user@13.232.185.79:/usr/share/tomcat/webapps'


       }
    }
   }
  }
}

    
