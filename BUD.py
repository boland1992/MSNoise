import shutil
import glob, os
import time

year = time.strftime("%Y") #current year
day = time.strftime("%j") #current day of the year

for file in glob.glob('*.ms'):
    print file
    netsta, rest = file.split("_")
    network = netsta[:2]
    station = netsta[2:]
    comp = rest[:3]
    rest = rest[3:]
    #define year/day here using rest
    path = os.path.join(network,station)
    filename = ".".join([station,network,'',comp, year, day])
    if not os.path.isdir(path):
        os.makedirs(path)
    shutil.move(file,os.path.join(path, filename))
