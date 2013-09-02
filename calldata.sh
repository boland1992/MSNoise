#!/bin/sh

DATE=$(date +'%Y/%m/%d %R:%S' --date="1 day ago") #this sets date and time in the correct format for the geonet java script. It also sets it one hour behind as the java program requires a start time and a duration.

echo $DATE 

#the below code gives date and time string as variale in correct format required
#IT WORKS!

java -jar 'geonet.jar' -s "NZ..AZ." -b """$DATE" -d 1d  -t ms 

rm GeoNetCWBQuery-4.0.2-bin.jar?version=1

