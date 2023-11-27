cp .env ../envs/skartner-app/temp.env
cp ../envs/skartner-app/staging.env .env

flutter build web

cp ../envs/skartner-app/temp.env .env

docker build . --platform linux/amd64 -t rgskartner/skartner-app

docker push rgskartner/skartner-app