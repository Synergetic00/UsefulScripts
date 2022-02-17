#!/bin/bash
SRC_NAME="src"

mkdir -p $SRC_NAME
mkdir -p "$SRC_NAME/main"

CONTENT_PROJECT="<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<projectDescription>\n    <name>Example</name>\n    <comment></comment>\n    <projects>\n    </projects>\n    <buildSpec>\n    </buildSpec>\n    <natures>\n    </natures>\n    <filteredResources>\n        <filter>\n            <id>1</id>\n            <name></name>\n            <type>30</type>\n            <matcher>\n                <id>org.eclipse.core.resources.regexFilterMatcher</id>\n                <arguments>node_modules|.git|__CREATED_BY_JAVA_LANGUAGE_SERVER__</arguments>\n            </matcher>\n        </filter>\n    </filteredResources>\n</projectDescription>"
CONTENT_CLASSPATH="<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<classpath>\n    <classpathentry kind=\"con\" path=\"org.eclipse.jdt.launching.JRE_CONTAINER\">\n        <attributes>\n            <attribute name=\"module\" value=\"true\"/>\n        </attributes>\n    </classpathentry>\n    <classpathentry kind=\"src\" path=\"$SRC_NAME\"/>\n    <classpathentry kind=\"output\" path=\"bin\"/>\n</classpath>"
CONTENT_JAVA="package main;\n\npublic class Main {\n    public static void main(String[] args) {\n        System.out.println(\"Hello, world!\");\n    }\n}"

if [ ! -e ".project" ] ; then
    touch ".project"
    echo -e "$CONTENT_PROJECT" > ".project"
fi

if [ ! -e ".classpath" ] ; then
    touch ".classpath"
    echo -e "$CONTENT_CLASSPATH" > ".classpath"
fi

if [ ! -e "./$SRC_NAME/main/Main.java" ] ; then
    touch "./$SRC_NAME/main/Main.java"
    echo -e "$CONTENT_JAVA" > "./$SRC_NAME/main/Main.java"
fi

javac -d bin $(find . -name "*.java")
java -cp bin main.Main