#!/bin/bash

echo "type name networkobjects"
read name
echo "type network for networkobjects"
read network

echo "{
\""name"\": \""$name"\",
       \""literals"\": [
	        "
for i in $network
do
   echo " {
          \""type"\": \""Network"\",
            \""value"\":\""$i"\"
          },"
done

echo "    ],
    \""type"\": \""NetworkGroup"\"
}"
