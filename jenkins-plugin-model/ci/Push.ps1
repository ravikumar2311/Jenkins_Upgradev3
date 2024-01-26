Param(
   $BuildNumber
)
docker image build -t ravikumar2311/jenkins-demo2:$BuildNumber -f jenkins-plugin-model/src/demo2-publish/dockerfile .

docker login -u $DOCKER_HUB_USER -p $DOCKER_HUB_PASSWORD

docker push ravikumar2311/jenkinsdotnetapplication:$BuildNumber
