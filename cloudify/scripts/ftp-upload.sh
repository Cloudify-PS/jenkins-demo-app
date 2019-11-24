#!/bin/bash -e
lftp -e "put ${resource_path}/index.html" -u ${username},${password} ${endpoint}
