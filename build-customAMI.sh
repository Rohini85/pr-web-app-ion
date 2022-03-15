#!/bin/bash
sudo su
cd
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install libtomcat9-java -y
sudo apt-get update -y
sudo apt-get install tomcat9-admin tomcat9-common -y
sudo apt-get install tomcat9 -y
cd /var/lib/tomcat9/webapps/
sudo wget https://my-tf-test-bucket2142020.s3.us-west-2.amazonaws.com/time-tracker-web-0.3.1-SNAPSHOT.war:wq
sudo systemctl start tomcat9
