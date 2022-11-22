docker build . -t python-app
image_id=$(sudo docker images --filter "reference=python-app" --quiet)


docker tag $image_id manish3097/python-app:$GITHUB_RUN_NUMBER
docker push manish3097/python-app