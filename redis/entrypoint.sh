#!/bin/bash

if [ "$1" = "redis-server" ]; then
	exec "$1"
fi
exec "$@"
exit 0
