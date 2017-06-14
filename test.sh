docker pull bashokku/flaskapp
docker run -d -p 5000:5000 bashokku/flaskapp
/var/go/apache-jmeter-3.2/bin/jmeter -n -t /var/go/flask.jmx -l flasklpipe.jtl -j /var/go/jmeterpipe.log
grep "Err" jmeterpipe.log > errorlog
a=$(sed -e 's/\(^.*(\)\(.*\)\(%.*$\)/\2/' errorlog)
#echo $a
var=$(echo $a 0 | awk '{print $1 + $2}')
#echo $var
if [ $var == 0 ];
then
#echo "insideif"
passed=1
else
echo "inside else"
passed=0
exit(1)
#echo $passed
fi




#/var/go/apache-jmeter-3.2/bin/jmeter -n -t /var/go/flask.jmx -l var/go/flasklpipe.jtl -j /var/go/jmeterpipe.log
#docker-compose up --build -d
#test
#nothing her
## Comment22222
