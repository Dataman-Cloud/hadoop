FROM		        2breakfast/hadoop:2.7.3-base
MAINTAINER      Weitao Zhou <wtzhou@dataman-inc.com>

ENV             HDFS_NAMENODE_RPC_HOST
ENV             HDFS_NAMENODE_RPC_PORT=8020
ENV             JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
ENV             RM_SCHEDULER=CapacityScheduler
ENV             HADOOP_TMP_DIR=/tmp/hadoop
ENV             HOST_IP
ENV             ROLE=resourcemanager

ADD             conf/* ${HADOOP_INSTALL_DIR}/etc/hadoop/
ADD             docker-entrypoint.sh /usr/local/sbin/docker-entrypoint.sh

VOLUME          ["${HADOOP_TMP_DIR}"]


# TCP 10020 MapReduce JobHistory Server host:port
# TCP 19888 MapReduce JobHistory Server Web UI host:port

EXPOSE 10020 19888

RUN chmod a+x /usr/local/sbin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/sbin/docker-entrypoint.sh"]
