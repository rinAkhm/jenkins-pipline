#!/bin/bash

if [ "$1" = "smoke" ]; then
  mvn clean verify -Dsuit="src/main/resources/suites/smoke.xml"
elif [ "$1" = "sanity" ]; then
  mvn clean verify -Dsuit="src/main/resources/suites/sanity.xml"
elif [ -z "$1" ]; then
  mvn clean verify
else
  echo "Need used used command docker run -t @IMAGE_NAME @PARAM"
  echo -e "\tWhen:\nPARAM == smoke || sanity\n\t@IMAGE_NAME "
fi
