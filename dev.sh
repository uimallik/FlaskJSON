docker build --no-cache --tag flaskapp:latest --file Dockerfile .
docker login --username=bashokku --password=Eswar@123
docker tag flaskapp bashokku/flaskapp
docker push bashokku/flaskapp
#docker push bashokku/flask
#tesr
