# hdfs-datanode

hadoop yarn in docker

## How to use it

### start resourcemanager

```bash
docker run -e HDFS_NAMENODE_RPC_HOST=$NAMENODEHOST HOST_IP=X.X.X.X ROLE=resourcemanager -v /data/tmp/hadoop:/tmp/hadoop -p10020:10020 -p19888:19888 --name resourcemanager -d 2breakfast/hadoop:2.7.3-yarn
```

### start nodemanager

```bash
docker run -e HDFS_NAMENODE_RPC_HOST=$NAMENODEHOST HOST_IP=X.X.X.X ROLE=nodemanager -v /data/tmp/hadoop:/tmp/hadoop -p10020:10020 -p19888:19888 --name nodemanager -d 2breakfast/hadoop:2.7.3-yarn
```

### start proxyserver

```bash
docker run -e HDFS_NAMENODE_RPC_HOST=$NAMENODEHOST HOST_IP=X.X.X.X ROLE=proxyserver -v /data/tmp/hadoop:/tmp/hadoop -p10020:10020 -p19888:19888 --name proxyserver -d 2breakfast/hadoop:2.7.3-yarn
```

### start historyserver

```bash
docker run -e HDFS_NAMENODE_RPC_HOST=$NAMENODEHOST HOST_IP=X.X.X.X ROLE=historyserver -v /data/tmp/hadoop:/tmp/hadoop -p10020:10020 -p19888:19888 --name proxyserver -d 2breakfast/hadoop:2.7.3-yarn
```

## Exposed ports

* TCP 10020 MapReduce JobHistory Server host:port
* TCP 19888 MapReduce JobHistory Server Web UI host:port
