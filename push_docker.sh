dockerpath=techyshell/capstone
echo "Docker ID and Image: $dockerpath"
docker tag capstone techyshell/capstone:v1.0.0
docker images
docker login -u $DOCKER_USER -p $DOCKER_PASSWORD
docker push techyshell/capstone:v1.0.0