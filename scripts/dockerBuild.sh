echo ${{ secrets.DOCKERHUB_PASSWORD }} | sudo docker login -u ${{ secrets.DOCKERHUB_USERNAME }} --password-stdin
image_id=$(sudo docker images --filter "reference=python-app" --quiet)
sudo docker tag $image_id manish3097/python-app
sudo docker push manish3097/python-app