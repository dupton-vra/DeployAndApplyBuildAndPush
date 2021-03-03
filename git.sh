
docker login -u dgupton75 -p Vcdexswzaq1!
git clone  https://github.com/dupton-vra/node-bulletin-board2.git
cd node-bulletin-board2
docker build --no-cache --tag bulletinboard:1.$version .
docker run --publish 8000:8080 --detach --name bb$version bulletinboard:1.$version
sleep 2
curl http://localhost:8000

docker tag bulletinboard:1.$1 dgupton75/bulletinboard:1.$version
docker push dgupton75/bulletinboard:1.$version
docker rm --force bb$version
rm -rf *
