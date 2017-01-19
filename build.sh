buildNumber=${BUILD_NUMBER}

docker rmi -f localhost:5000/devopsly200-app-teststage
docker build -t localhost:5000/devopsly200-app-teststage -f DockerfileTest .

docker rmi -f localhost:5000/devopsly200-app-stagingstage
docker build -t localhost:5000/devopsly200-app-stagingstage -f DockerfileStaging .

docker rmi -f localhost:5000/devopsly200-app-productionstage
docker build -t localhost:5000/devopsly200-app-productionstage -f DockerfileProduction .

marathon=$(curl http://myip.dnsomatic.com)
echo ${marathon}

echo Deleting cadvisor 
curl -X DELETE -H "Content-Type: application/json" http://${marathon}:8080/v2/apps/cadvisor?force=true
sleep 5
echo posting app
curl -X POST -H "Content-Type: application/json" http://${marathon}:8080/v2/apps -d@cadvisor_marathon.json
echo Deployed to test
