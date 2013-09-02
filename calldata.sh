#!/bin/sh

DATE=$(date +'%Y/%m/%d %R:%S' --date="1 day ago") #this sets date and time in the correct format for the geonet java script. It also sets it one hour behind as the java program requires a start time and a duration.

echo $DATE 

#the below code gives date and time string as variale in correct format required
#IT WORKS!

wget http://info.geonet.org.nz/download/attachments/1475218/GeoNetCWBQuery-4.0.2-bin.jar?version=1&modificationDate=1350598801232

java -jar 'GeoNetCWBQuery-4.0.2-bin.jar?version=1' -s "NZ..AZ." -d 86400 -event:time """$DATE"

rm GeoNetCWBQuery-4.0.2-bin.jar?version=1

