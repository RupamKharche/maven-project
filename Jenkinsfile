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
   stage ('depolyment')
   {
    steps
    {
      sshagent(['DevCICD']) {
       sh 'scp -o /webapp/target/webapp.war ec2-user@172.31.3.119:/usr/share/tomcat/webapps'
    }
   }
  }
}


    
