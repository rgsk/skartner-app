cp .env envs/temp.env
cp envs/staging.env .env

flutter build web

cp envs/temp.env .env

docker build . --platform linux/amd64 -t rgskartner/skartner-app

docker push rgskartner/skartner-app