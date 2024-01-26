Param(
   $BuildNumber
)
docker image build -t ravikumar2311/jenkinsdotnetapplication:$BuildNumber .

docker login -u $DOCKER_HUB_USER -p $DOCKER_HUB_PASSWORD

docker push ravikumar2311/jenkinsdotnetapplication:$BuildNumber
