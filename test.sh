docker pull bashokku/flaskapp
docker run -d -p 5000:5000 bashokku/flaskapp
/var/go/apache-jmeter-3.2/bin/jmeter -n -t /var/go/flask.jmx -l var/go/flasklpipe.jtl -j /var/go/jmeterpipe.log
#docker-compose up --build -d
#test
#nothing her
## Comment22
