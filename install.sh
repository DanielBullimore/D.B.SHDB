#!/bin/sh
# File: dbrep.1.1
# System: D.B.SHDB.1.1
# Dependencies: -
# ------------------------------------------------
# Author: Daniel Bullimore
# Authors Email: - 
# First Written: 2013
# ------------------------------------------------
# !If you make changes add your name to the list
# Last Modified (d/m/y): 
# 6/5/2019 Daniel Bullimore
#
# ------------------------------------------------
# Copyright 2019 Daniel Bullimore
# D.B.SHDB is licensed under the The 3-Clause BSD License
# To view this license:
# https://github.com/DanielBullimore/D.B.SHDB/blob/master/LICENSE
#
#--------------
#---DISCRIPTION\
#---------------
# installs SHDB into user shell
# creates db executable in /usr/local/sbin so long as it doesnt exist
SHDBDIR=$(pwd);
if [ ! -f /usr/local/bin/db ]
then
	echo "#!/bin/sh" | cat >> /usr/local/bin/db;
	DBSTRING="cd $SHDBDIR && exec ./db.sh ";
       	DBSTRING2='"$@";';
	echo "$DBSTRING $DBSTRING2" | cat >> /usr/local/bin/db;
	chmod +x /usr/local/bin/db;
	exit 0;
else
	echo "db already exists in /usr/local/bin/";
fi;
