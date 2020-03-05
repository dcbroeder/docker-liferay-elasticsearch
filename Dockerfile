# https://www.elastic.co/guide/en/elasticsearch/reference/6.8/docker.html
from docker.elastic.co/elasticsearch/elasticsearch:6.8.6

MAINTAINER Daniel Carrillo "dcbroeder@gmail.com"

# ARGS
ARG OPENJDK_TARGZ=OpenJDK11U-jdk_x64_linux_hotspot_11.0.5_10.tar.gz

# ENV
ENV JAVA_HOME /opt/jdk
ENV PATH="/opt/jdk/bin:${PATH}"

# JDK11
COPY $OPENJDK_TARGZ /opt
RUN rm -Rf /opt/jdk*
RUN cd /opt && tar -xf $OPENJDK_TARGZ && rm $OPENJDK_TARGZ
RUN cd /opt && ln -s /opt/jdk* jdk

# Liferay plugins
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu --verbose
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-kuromoji --verbose
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-smartcn --verbose
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-stempel --verbose
