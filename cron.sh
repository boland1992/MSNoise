chmod a+x cron.sh

./calldata #call data from geonet server 

python BUD.py # convert to BUD format

cd ..; cd program

python 01.scan_archive.py
python 02.new_jobs.py
python 03.compute_cc.py
python 04.stack.py
python 05.compute_mwcs.py
python 06.compute_dtt.py 
python 07.plot_dtt.py

