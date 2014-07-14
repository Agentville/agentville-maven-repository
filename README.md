agentville-maven-repository
===========================

Agentvilles eigenes kleines Maven-Repository. Für die hier verwendeten Bibliotheken.

Die notwendigen Angaben in der POM.xml sind erstmal für das Repository selbst:
<code>
  <repositories>
    <repository>
        <id>agentville</id>
        <url>https://github.com/Agentville/agentville-maven-repository/raw/master</url>
    </repository>
  </repositories>
</code>

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

