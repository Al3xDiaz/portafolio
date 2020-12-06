cd portafolio/
echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin;
docker build --tag image:latest .;
imageId=$(docker images | grep "image" | awk '{print $3}');
docker tag $imageId al3xleonel/portafolio:lastet;
docker push al3xleonel/portafolio;