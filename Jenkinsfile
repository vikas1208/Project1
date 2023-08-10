node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    def mvn = tool 'maven3.6.3';
    withSonarQubeEnv() {
      sh "${mvn}/bin/mvn clean verify sonar:sonar -Dsonar.projectKey=myproject -Dsonar.projectName='myproject'"
    }
  }
  stage("sendemail") {
    mail bcc: '', body: '''sonarqube detailed report on the project
http://20.89.90.110:9090/dashboard?id=myproject''', cc: '', from: '', replyTo: '', subject: 'report', to: 'nocturnaldevops@gmail.com'
}
}
