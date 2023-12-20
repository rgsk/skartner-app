cp .env ../skartner-instance/envs/skartner-app/temp.env
cp ../skartner-instance/envs/skartner-app/staging.env .env

flutter build web

cp ../skartner-instance/envs/skartner-app/temp.env .env

docker build . --platform linux/amd64 -t rgskartner/skartner-app

docker push rgskartner/skartner-app

source ../skartner-instance/envs/skartner-jenkins/staging.env

# echo "JENKINS_API_KEY: $JENKINS_API_KEY"

curl -X POST http://jenkins.skartner.com/job/restart-skartner-app/build --user dev-rahul:$JENKINS_API_KEY