docker build --no-cache --tag flaskapp:latest --file Dockerfile .
docker tag flaskapp bashokku/flaskapp
docker push bashokku/flaskapp
#docker push bashokku/flask
#tesr
