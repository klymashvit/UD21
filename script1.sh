#!/bin/bash

p2=$(python2 --version 2>&1) 
p3=$(python3 --version)
echo -e "In my laptop I have a $p2 version and a $p3 version."

set -- $p3
declare -i v3=$(echo $2 | cut -c-1)
set -- $p2
declare -i v2=$(echo $2 | cut -c-1)


if [ $v2 -lt $v3 ]
then 
    echo -e "When it comes to Python version 2 vs. 3 today, Python 3 is the outright winner. That's because Python 2 won't be available after 2020. Mass Python 3 adoption is the clear direction of the future.\n\nAfter considering declining support for Python 2 programming language and added benefits from upgrades to Python 3, it is always advisable for a new developer to select Python version 3. However, if a job demands Python 2 capabilities, that would be an only compelling reason to use this version."
else
    echo -e "nothin"
fi
