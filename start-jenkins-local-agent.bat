curl -sO http://localhost:8080/jnlpJars/agent.jar
java -jar agent.jar -jnlpUrl http://localhost:8080/manage/computer/LocalWinAgent/jenkins-agent.jnlp -secret abc123 -workDir "c:/Users/jenkins/jenkins-agent"
