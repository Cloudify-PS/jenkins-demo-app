#!/bin/bash -e
lftp -e "mput ${resource_path}/*" -u ${username},${password} ${endpoint}
