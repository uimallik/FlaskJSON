docker build --no-cache --tag flask:latest --file Dockerfile .
docker tag flask bashokku/flask:latest
docker push bashokku/flask:latest
#tesr
