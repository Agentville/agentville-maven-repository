agentville-maven-repository
===========================

Dies ist Agentvilles eigenes kleines Maven-Repository. Für die hier verwendeten Bibliotheken und vielleicht auch für das eine oder andere selbst entwickelte Artefakt. Es gibt einen Blogbeitrag dazu von mir (bald jedenfalls...), aber alle notwendigen Informationen, um dieses Repository zu benutzen, finden sich auch hier.

Die Artefakte sind von mir selbstgemacht, und zwar in Handarbeit:
* Für das Binary habe ich das Original aus dem Download genommen, entsprechend der Maven-Konvention umbenannt und einzelne Dateien aus dem Hauptverzeichnis des Original-Projektes (Lizenz, Readme, Changelog, ...) hinzugefügt.
* Das Source-Artefakt ist der Inhalt des src-Verzeichnisses aus dem Original-Projekt. Hier habe ich ebenfalls die Dateien aus dem Hauptverzeichnis (s.o.) hinzugefügt.
* Das Javadoc-Artefakt ist der Inhalt des api-Verzeichnisses.
* Die POM-Datei ist selbstgemacht, die Informationen dafür habe ich aus den build-Skripten der Projekte.

Diese ganzen Archive habe ich dann lokal *deployt*, und zwar in das Git-Projekt, das ich als Repository zweckentfremde. Der Befehl dafür sieht beispielsweise so aus:

    mvn deploy:deploy-file -DrepositoryId=releaseRepository -Dfile=jade-4.3.2.jar 
    -DgroupId=com.tilab.jade -DartifactId=jade -Dversion=4.3.2 -Dpackaging=jar 
    -DpomFile=pom.xml -Dsources=jade-4.3.2-sources.zip -Djavadoc=jade-4.3.2-javadoc.zip 
    -DcreateChecksum=true -Durl=file:///D:/Git-Projekte/agentville-maven-repository

Dabei hat Maven die Source- und die Javadoc-Artefakte von .zip in .jar umgebaut und die Metadata- und Hash-Dateien erzeugt. Naja, und dann halt noch *commmit* und *sync*. Klar.

Ich hab natürlich eigentlich auch besseres zu tun, als Maven-Artefakte für anderer Leute Ant-Projekte zu bauen. Aber auf der anderen Seite möchte ich JADE mit Maven verwenden und dabei nicht auf bequemen Zugriff auf Sourcecode und API-Dokumentation verzichten. Trotzdem ist das hier nur eine Notlösung, die vielleicht auch nicht für alle Zeiten zur Verfügung steht!

Um dieses Repository zu benutzen, muss es erstmal im POM aufgenommen werden. Und zwar so:

    <project ...>
      ...
      <repositories>
        <repository>
          <id>agentville</id>
          <url>https://github.com/Agentville/agentville-maven-repository/raw/master</url>
        </repository>
      <repositories>
      ...
    </project>

Und dann für die hier abgelegten Artefakte:

JADE 4.3.2:

    <dependency> 
      <groupId>com.tilab.jade</groupId>
      <artifactId>jade</artifactId>
      <version>4.3.2</version> 
      <scope>compile</scope>
    </dependency>

JADE Misc. AddOn 2.5:

    <dependency> 
      <groupId>com.tilab.jade</groupId>
      <artifactId>jade-misc</artifactId>
      <version>2.5</version> 
      <scope>compile</scope>
    </dependency>    

JADE Security AddOn 3.8

    <dependency> 
      <groupId>com.tilab.jade</groupId>
      <artifactId>jade-security</artifactId>
      <version>3.8</version> 
      <scope>compile</scope>
    </dependency>

JADE Test Suite AddOn 1.11.0:

    <dependency> 
      <groupId>com.tilab.jade</groupId>
      <artifactId>jade-test-suite</artifactId>
      <version>1.11.0</version>
      <scope>test</scope>
    </dependency>    

JADE Trusted Agents AddOn 1.1.0

    <dependency> 
      <groupId>org.logica.ctis.security</groupId>
      <artifactId>jade-trusted-agents</artifactId>
      <version>1.1.0</version>
      <scope>compile</scope>
    </dependency>

(mehr folgen später)

