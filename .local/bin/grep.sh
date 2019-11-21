#!/bin/sh

if [ "$#" -ne 2 ]; then
    echo "Usage: $(basename $0) <service> <pattern>"
    exit
fi

SERVICE="$1"
PATTERN="$2"

n=$(( $(smc -e live services show merlion-main-live-sg | wc -l) - 4))
echo "Grepping $PATTERN on $n $SERVICE tasks ..."

UUID=$(openssl rand -base64 12)
mkdir -p /tmp/grep/$UUID
echo "Storing results on /tmp/grep/$UUID/..."

for i in $(seq 2 $(($n - 1)))
do
    (TASK=$(smc -e live services show "$SERVICE" | grep "\ $i\ \ \ \ " | grep -o "$SERVICE\.\d\+\.\d\+") &&
	echo "Grepping $PATTERN on task $i: $TASK ..." &&
	smc -e live tasks run $TASK "grep $PATTERN log/error.log" | cut -f 2- -d ' ' > /tmp/grep/$UUID/$TASK.log) &
done

wait

sort -m /tmp/grep/$UUID/*.log
