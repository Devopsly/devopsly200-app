buildNumber=${BUILD_NUMBER}

docker push localhost:5000/devopsly200-app-teststage
docker push localhost:5000/devopsly200-app-teststage-failed
docker push localhost:5000/devopsly200-app-stagingstage
docker push localhost:5000/devopsly200-app-stagingstage-failed
docker push localhost:5000/devopsly200-app-productionstage
docker push localhost:5000/devopsly200-app-productionstage-failed
