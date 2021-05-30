## Project setup

```
cd ./app

git clone https://github.com/sdf0sdf/serviceapp-frontend.git
git clone https://github.com/sdf0sdf/serviceapp.git

cd ./serviceapp
mvn install

cd ..
docker-compose up --build
