#!/bin/bash
#docker pull bashokku/flaskapp
docker run -d -p 5002:5000 bashokku/flaskapp
/var/go/apache-jmeter-3.2/bin/jmeter -n -JthreadCount=1 -JloopCount=1 -JrampUp=1 -Jhost=127.0.0.1 -Jport=5002 -t /var/go/flask.jmx -l flasklpipe.jtl -j /var/go/jmeterpipe.log
tail -1 /var/go/jmeterpipe.log > /var/go/errorlog
#grep "Err" /var/go/jmeterpipe.log > /var/go/errorlog
a=$(sed -e 's/\(^.*(\)\(.*\)\(%.*$\)/\2/' /var/go/errorlog)
echo $a
var=$(echo $a 0 | awk '{print $1 + $2}')
echo $var
if [ $var -eq 0 ];
then
echo "insideif"
echo "var val" $var
passed=1
echo "passedval" $passed
else 
echo "inside else"
echo "var val" $var
passed=0
echo "passedval" $passed
exit 1 
fi
##
