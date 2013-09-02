
#install required modules
sudo apt-get update
sudo apt-get install python
sudo apt-get install python-dev
sudo apt-get install python-setuptools
sudo apt-get install python-numpy
sudo apt-get install python-scipy
sudo apt-get install python-matplotlib
sudo apt-get install python-lxml
sudo apt-get install ipython 
sudo apt-get install ipython-notebook
sudo apt-get install python-pandas
sudo apt-get install python-sympy
sudo apt-get install python-nose
sudo apt-get install python-mpltoolkits.basemap
sudo apt-get install zip
sudo apt-get install unzip
sudo apt-get install python-pip

easy_install obspy
easy_install scikits.samplerate
easy_install traitsui 
easy_install statsmodels
pip install SQLAlchemy #install sqlalchemy module

#install required obspy modules
deb http://deb.obspy.org raring main
wget --quiet -O - https://raw.github.com/obspy/obspy/master/misc/debian/public.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install python-obspy

#install enthoughts module
mkdir ets
cd ets
wget  https://github.com/enthought/ets/raw/master/ets.py

python ets.py develop
python ets.py -h
cd ..
rm -r 'ets'

#Install MSNoise
wget https://github.com/ROBelgium/MSNoise/archive/sqlvolution.zip #download MSNOISE ZIP file

unzip sqlvolution.zip #unzip MSNOISE file 
rm -r sqlvolution.zip #delete unwanted zip file 
mv 'MSNoise-sqlvolution' 'MSNoiseProgram'
cd 'MSNoiseProgram'

mkdir Data


python 00.0.installer.py #run msnoise installer
python 00.1.configurator.py #run configurator

clear






#The following may not even be necessary but is still nice code
#install scikits

#get tar.gz file
#wget https://pypi.python.org/packages/source/s/scikits.samplerate/scikits.samplerate-0.3.3.tar.gz

#extract tar.gz
#tar -xvzf 'scikits.samplerate-0.3.3.tar.gz'
#rm -r scikits.samplerate-0.3.3.tar.gz
#cd scikits.samplerate-0.3.3
#python setup.py
#cd .. 
#install pandas
#wget https://pypi.python.org/packages/source/p/pandas/pandas-0.12.0.tar.gz
#tar -xvzf 'pandas-0.12.0.tar.gz'
#rm -r 'pandas-0.12.0.tar.gz'
#cd pandas-0.12.0
#python setup.py
#cd .. 

