echo ${{ secrets.DOCKERHUB_PASSWORD }} | sudo docker login -u ${{ secrets.DOCKERHUB_USERNAME }} --password-stdin
sudo docker build . -t python-app
image_id=$(sudo docker images --filter "reference=python-app" --quiet)
build_no=${{ secrets.GITHUB_RUN_NUMBER }}
sudo docker tag $image_id manish3097/python-app
sudo docker push manish3097/python-app