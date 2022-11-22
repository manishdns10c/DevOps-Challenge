user=$(echo  $DOCKERHUB_USERNAME)  
password=$(echo $DOCKERHUB_PASSWORD) 
echo $user| sudo docker login -u $password--password-stdin
sudo docker build . -t python-app
image_id=$(sudo docker images --filter "reference=python-app" --quiet)
build_no=$(echo $BUILD_NUMBER)
sudo docker tag $image_id manish3097/python-app:$build_no
sudo docker push manish3097/python-app