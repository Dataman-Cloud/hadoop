#!/bin/sh

case "$ROLE" in
    resourcemanager|nodemanager|proxyserver):
        ${HADOOP_INSTALL_DIR}/bin/yarn --daemon start $ROLE
        ;;
    historyserver):
        ${HADOOP_INSTALL_DIR}/bin/mapred --daemon start $ROLE
        ;;
    *)
        exit 1;
        ;;
esac

exec "$@"
