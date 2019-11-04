#!/bin/sh

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 [profile/heap] <task>"
    exit
fi

COMMAND="$1"
TASK="$2"

echo "Profiling $COMMAND on $TASK ..."
smc -e live tasks run $TASK \
    'PPROF_PORT=$(ps -ef | grep RcmdServer | grep -v "grep" | grep -v "/bin/sh" | grep -Po "\d+$"); \
    go tool pprof -text http://0.0.0.0:$PPROF_PORT/debug/pprof/'$COMMAND' > /dev/null'

echo "Downloading $TASK pprof files ..."
mkdir -p /tmp/pprof
rm -rf /tmp/pprof/$TASK
smc -e live tasks download $TASK -s /root/pprof -d /tmp/pprof/$TASK

mkdir -p ~/Documents/pprof/$TASK
cp -n /tmp/pprof/$TASK/* ~/Documents/pprof/$TASK/ || true
echo "Downloaded $TASK pprof files."
