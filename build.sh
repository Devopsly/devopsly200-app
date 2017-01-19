buildNumber=${BUILD_NUMBER}

docker rmi -f localhost:5000/devopsly200-app-teststage
docker build -t localhost:5000/devopsly200-app-teststage -f DockerfileTest .

docker rmi -f localhost:5000/devopsly200-app-stagingstage
docker build -t localhost:5000/devopsly200-app-stagingstage -f DockerfileStaging .

docker rmi -f localhost:5000/devopsly200-app-productionstage
docker build -t localhost:5000/devopsly200-app-productionstage -f DockerfileProduction .

