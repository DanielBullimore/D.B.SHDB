#!/bin/sh
# File: db.sh
# System: D.B.SHDB.1.1
# Dependencies:-
# ------------------------------------------------
# Author: Daniel Bullimore
# Authors Email: - 
# First Written: 2013
# ------------------------------------------------
#  !If you make changes add your name to the list
# Last Modified (d/m/y): 
#   4/5/2019 Daniel Bullimore
#
# ------------------------------------------------
# Copyright 2019 Daniel Bullimore
# D.B.SHDB is licensed under the The 3-Clause BSD License
# To view this license:
#   https://github.com/DanielBullimore/D.B.SHDB/blob/master/LICENSE
#
#--------------
#---DISCRIPTION\
#---------------
# This script is the switch for the Add Get Delete Replace usecases.

case $1 in
  add) 	
    /bin/sh /usr/local/shdb/dbadd.1.1 $2 $3 $4 && exit 4; 	
    exit 1;
  ;; 
  del) 	
    /bin/sh /usr/local/shdb/dbdel.1.1 $2 $3 && exit 0;
    exit 1;
  ;;
  rep)
    /bin/sh /usr/local/shdb/dbrep.1.1 $2 $3 $4 && exit 0;
    exit 1;
  ;; 
  get)
    /bin/sh /usr/local/shdb/dbget.1.1 $2 $3 && exit 0;
    exit 1;
  ;;
  *)
    echo "Error: unknown method: $1";
    exit 1;
  ;;
esac;
