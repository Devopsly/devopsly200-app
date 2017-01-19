buildNumber=${BUILD_NUMBER}

docker push localhost:5000/devopsly200-app-teststage
docker push localhost:5000/devopsly200-app-stagingstage
docker push localhost:5000/devopsly200-app-productionstage
