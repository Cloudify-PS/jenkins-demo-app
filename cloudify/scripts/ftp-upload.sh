#!/bin/bash -e
app_dir=$(mktemp -d)
cd ${app_dir}
curl -o app.tar.gz ${app_content}
mkdir extracted
tar -C extracted -zxvf app.tar.gz
lftp -e "mput extracted/*" -u ${username},${password} ${endpoint}
