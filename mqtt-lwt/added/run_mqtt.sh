#!/bin/sh

. /usr/local/dynamic-resources/dynamic_resources.sh
MAX_HEAP=`get_heap_size`
if [ -n "$MAX_HEAP" ]; then
	export JAVA_OPTS="-Xms${MAX_HEAP}m -Xmx${MAX_HEAP}m $JAVA_OPTS"
fi

exec java $JAVA_OPTS -Dvertx.disableFileCaching=true -Dvertx.disableFileCPResolving=true -jar /opt/mqtt-lwt/mqtt-lwt.jar