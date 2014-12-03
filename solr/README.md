#solr 4.2.0
docker build -t solr .

docker run -d -p 8982:8982 solr