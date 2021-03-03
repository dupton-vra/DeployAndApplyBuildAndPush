
git clone  https://github.com/dupton-vra/node-bulletin-board2.git
docker rm --force bb
docker rmi bulletinboard:1.$version
docker build --no-cache --tag bulletinboard:1.$version .
docker run --publish 8000:8080 --detach --name bb bulletinboard:1.$version
sleep 2
curl http://localhost:8000

docker tag bulletinboard:1.$1 dgupton75/bulletinboard:1.$version
docker push dgupton75/bulletinboard:1.$version
