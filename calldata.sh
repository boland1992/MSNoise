

DATE=$(date +'%Y/%m/%d %R:%S' --date="1 day ago") #this sets date and time in the correct format for the geonet java script. It also sets it one hour behind as the java program requires a start time and a duration.

echo $DATE 

#the below code gives date and time string as variale in correct format required
#IT WORKS!
java -jar '/home/boland/Dropbox/University/Current Courses/Python Project/GeoNetCWBQuery-4.0.2-bin.jar' -s "NZ..AZ." -d 86400 -event:time """$DATE"

#the 3600 is the number of seconds it checks, so no new earthquake information in the last day.

chmod +x '/home/boland/Dropbox/University/Current Courses/Python Project/CallData.sh' 

#Kasper, just change the above directory to wherever you're storing your GeoNetCWBQuery-4.0.2-bin.jar file and it all should work swimmingly. 
