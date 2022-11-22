docker build . -t python-app
image_id=$(sudo docker images --filter "reference=python-app" --quiet)

build_no=$(echo "${{ env.GITHUB_RUN_NUMBER	 }}")
docker tag $image_id manish3097/python-app:$build_no
docker push manish3097/python-app