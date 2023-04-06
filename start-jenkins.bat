@ECHO OFF

REM -Dhudson.plugins.git.GitStatus.NOTIFY_COMMIT_ACCESS_CONTROL=disabled
REM -Dpermissive-script-security.enabled=true

REM TODO: If updating Jenkins war file, update the version in .jenkins/config.xml
java -Dhudson.plugins.git.GitSCM.ALLOW_LOCAL_CHECKOUT=true -Dpermissive-script-security.enabled=true  -jar jenkins.war
