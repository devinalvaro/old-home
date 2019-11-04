#!/bin/sh

if [ "$#" -ne 2 ] && [ "$#" -ne 3 ]; then
    echo "Usage: $(basename $0) [profile/heap] <task|service index>"
    exit
fi

COMMAND="$1"
TASK="$2"

if [ "$#" -eq 3 ]; then
    SERVICE=$2
    INDEX=$3

    echo "Getting the task ID of $SERVICE $INDEX ..."
    TASK=$(smc -e live services show "$SERVICE" | grep "\ $INDEX\ \ \ \ " | grep -o "$SERVICE\.\d\+\.\d\+")
fi

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
