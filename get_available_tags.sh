#!/bin/bash

TAGS=$( curl -s "https://api.github.com/repos/ngageoint/elasticgeo/releases" | sed -rn 's/.*"tag_name": "(.*)".*/\1/p' | sort -n | uniq | grep -v '^2\..\.' | grep -v '^2\.10\.' )
if [ -z "${TAGS}" ]; then
	echo "No releases found at https://github.com/ngageoint/elasticgeo/releases - check the website and the script $0" >&2
	exit 1
fi
echo ${TAGS}
