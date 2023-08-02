#!/bin/bash
httpPort=9090
nohup java -jar jenkins.war --httpPort=$httpPort & > /dev/null &
