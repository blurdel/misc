curl.exe -sO http://localhost:8888/jnlpJars/agent.jar
java -jar agent.jar -jnlpUrl http://localhost:8888/computer/LocalWinAgent/jenkins-agent.jnlp -secret abc123 -workDir "c:/Users/jenkins/Programs/jenkins-agent"
