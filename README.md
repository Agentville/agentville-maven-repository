agentville-maven-repository
===========================

Dies ist Agentvilles eigenes kleines Maven-Repository. Für die hier verwendeten Bibliotheken und vielleicht auch für das eine oder andere selbst entwickelte Artefakt. Es gibt vielleicht auch mal einen Blogbeitrag dazu, aber alle notwendigen Informationen, um dieses Repository zu benutzen, finden sich auch hier.

Die JADE-Artefakte sind von mir selbstgemacht, und zwar in Handarbeit:
* Für das Binary habe ich das Original aus dem Download genommen, entsprechend der Maven-Konvention (um-)benannt und einzelne Dateien aus dem Hauptverzeichnis des Original-Projektes (Lizenz, Readme, Changelog, ...) hinzugefügt.
* Das Source-Artefakt ist der Inhalt des src-Verzeichnisses aus dem Original-Projekt. Hier habe ich ebenfalls die Dateien aus dem Hauptverzeichnis (s.o.) hinzugefügt.
* Das Javadoc-Artefakt ist der Inhalt des api-Verzeichnisses.
* Die POM-Datei ist selbstgemacht, die Informationen dafür habe ich aus den build-Skripten der Projekte.

Diese Artefakte liegen im Verzeichnis "_jade_mavenized".

Anschließend hab ich die Archive dann lokal *deploy*t - und zwar in dieses Git-Projekt, das ich als Maven-Repository zweckentfremde. Der Befehl dafür sieht beispielsweise so aus:

    mvn deploy:deploy-file -DrepositoryId=releaseRepository -Dfile=jade-4.3.2.jar 
    -DgroupId=com.tilab.jade -DartifactId=jade -Dversion=4.3.2 -Dpackaging=jar 
    -DpomFile=pom.xml -Dsources=jade-4.3.2-sources.zip -Djavadoc=jade-4.3.2-javadoc.zip 
    -DcreateChecksum=true -Durl=file:///D:/Git-Projekte/agentville-maven-repository

Dabei hat Maven die Source- und die Javadoc-Artefakte von .zip in .jar umgebaut und die Metadata- und Hash-Dateien erzeugt. Naja, und dann halt noch *commit* und *sync*. Anschließend liegen die Artefakte bei mir lokal im Projekt und müssen dann noch mit Git auf den Server gefetched werden.

Mittlerweile gibt es auch offizielle JADE-Maven-Artefakte, aber meines Wissens nach ohne Sources und ohne Javadocs. Deshalb behalte ich mein Repository hier noch etwas. Trotzdem ist es nur eine Notlösung, die vielleicht auch nicht für alle Zeiten zur Verfügung steht.

Die Bereitstellung erfolgt ohne Gewähr und die Benutzung also auf eigenes Risiko. Wenn es mit einem Artefakt hier Probleme gibt, freue ich mich aber über einen entsprechenden Hinweis.

Um dieses Repository (trotzdem) zu benutzen, muss es erstmal im POM aufgenommen werden. Und zwar so:

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

(mehr folgen vielleicht später)

