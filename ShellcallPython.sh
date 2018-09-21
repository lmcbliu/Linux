#!/bin/bash

# created by bxl103
# 2018-09-20
# This script is to rename the duplicate <OilAndGas> or </OilAndGas> to <OilAndGases> or </OilAndGases> respectively


Filepath='/home/xxx/xxx'

sed   "s/<OilAndGas>/<OilAndGases>/g" $Filepath"BCAA_2017_Part6.xml" > $Filepath"BCAA_2017_Part6"
sed   "s/<OilAndGas>/<OilAndGases>/g" $Filepath"BCAA_2017_Part8.xml" > $Filepath"BCAA_2017_Part8"
sed   "s/<OilAndGas>/<OilAndGases>/g" $Filepath"BCAA_2017_Part14.xml" > $Filepath"BCAA_2017_Part14"
sed   "s/<OilAndGas>/<OilAndGases>/g" $Filepath"BCAA_2017_Part18.xml" > $Filepath"BCAA_2017_Part18"
sed   "s/<OilAndGas>/<OilAndGases>/g" $Filepath"BCAA_2017_Part19.xml"  > $Filepath"BCAA_2017_Part19"

python $Filepath"oilandgas.py" $Filepath"BCAA_2017_Part6"
python $Filepath"oilandgas.py" $Filepath"BCAA_2017_Part8"
python $Filepath"oilandgas.py" $Filepath"BCAA_2017_Part14"
python $Filepath"oilandgas.py" $Filepath"BCAA_2017_Part18"
python $Filepath"oilandgas.py" $Filepath"BCAA_2017_Part19"


rm $Filepath"BCAA_2017_Part6"
rm $Filepath"BCAA_2017_Part8"
rm $Filepath"BCAA_2017_Part14"
rm $Filepath"BCAA_2017_Part18"
rm $Filepath"BCAA_2017_Part19"
