mvn install:install-file -Dfile=jade-trusted-agents-1.1.0.jar -DgroupId=org.logica.ctis.security -DartifactId=jade-trusted-agents -Dversion=1.1.0 -Dpackaging=jar -DpomFile=pom.xml -Dsources=jade-trusted-agents-1.1.0-sources.zip -Djavadoc=jade-trusted-agents-1.1.0-javadoc.zip -DcreateChecksum=true

mvn deploy:deploy-file -DrepositoryId=releaseRepository -Dfile=jade-trusted-agents-1.1.0.jar -DgroupId=org.logica.ctis.security -DartifactId=jade-trusted-agents -Dversion=1.1.0 -Dpackaging=jar -DpomFile=pom.xml -Dsources=jade-trusted-agents-1.1.0-sources.zip -Djavadoc=jade-trusted-agents-1.1.0-javadoc.zip -DcreateChecksum=true -Durl=file:///D:/Git-Projekte/agentville-maven-repository