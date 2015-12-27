FROM       java:7
MAINTAINER Weitao Zhou <wtzhou@dataman-inc.com>

ENV        DEBIAN_FRONTEND noninteractive

ENV        HADOOP_VERSION 2.7.1
ENV        HADOOP_INSTALL_DIR /opt/hadoop

# init base os
RUN        apt-get update && \
           apt-get install -y --no-install-recommends curl tar ca-certificates && \
           apt-get clean autoclean && \
           apt-get autoremove --yes && \
           rm -rf /var/lib/{apt,dpkg,cache,log}/

# download hadoop 
RUN        mkdir -p ${HADOOP_INSTALL_DIR} && \
           curl -L http://shinyfeather.com/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz | tar -xz --strip=1 -C ${HADOOP_INSTALL_DIR}

WORKDIR    ${HADOOP_INSTALL_DIR}
