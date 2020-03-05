# docker-liferay-elasticsearch
ElasticSearch docker image for Liferay 7.2 (OpenJDK11).

A way to change elasticsearch default's JDK and install Liferay required plugins from ElasticSearch public  docker images https://www.elastic.co/guide/en/elasticsearch/reference/6.8/docker.html

- Download OpenJDK11U-jdk_x64_linux_hotspot_11.0.5_10.tar.gz from https://adoptopenjdk.net and copy to Dockerfile directory (check argument OPENJDK_TARGZ from Dockerfile).
