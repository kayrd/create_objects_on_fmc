#!/bin/bash

echo "type name SOURCE networkobjects:"
read Sname
echo "type name DESTINATION networkobjects:"
read Dname

echo "type network for SOURCE networkobjects:"
read Snetwork

echo "type network for DESTINATION networkobjects:"
read Dnetwork

#network=$(cat ./networkfile)
#testfile=$(./testfile)
echo "{
\""name"\": \""$Sname"\",
       \""literals"\": [
	        " > testfile
for i in $Snetwork
do
   echo " {
          \""type"\": \""Network"\",
            \""value"\":\""$i"\"
          },"  >> testfile
done

echo "    ],
    \""type"\": \""NetworkGroup"\"
}" >> testfile


#echo "type name DESTINATION networkobjects:"
#read Dname
#echo "type network for DESTINATION networkobjects:"
#read Dnetwork
echo "{
\""name"\": \""$Dname"\",
       \""literals"\": [
                " >> testfile
for i in $Dnetwork
do
   echo " {
          \""type"\": \""Network"\",
            \""value"\":\""$i"\"
          }," >> testfile
done

echo "    ],
    \""type"\": \""NetworkGroup"\"
}" >> testfile


for tbl in `cat testfile` 
do 
    echo "$tbl"
done

