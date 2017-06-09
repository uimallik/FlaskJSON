docker build --no-cache --tag flask:latest --file Dockerfile .
docker tag flask bashokku/flask
docker push bashokku/flask
