docker pull bashokku/flaskapp
docker run -d -p 5000:5000 bashokku/flaskapp
~/apache-jmeter-3.2/bin/jmeter -n -t flask.jmx -l flasklpipe.jtl -j /var/go/jmeterpipe.log
#docker-compose up --build -d
#test
#nothing her
## Comment22
