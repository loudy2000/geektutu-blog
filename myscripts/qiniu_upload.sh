#!/bin/bash
set -eou pipefail

root=$(cd $(dirname $0)/..; pwd)

echo "download qiniu"
cd $root/myscripts
rm -f qshell*
wget http://devtools.qiniu.com/qshell-linux-x86-v2.4.1.zip
unzip qshell-linux-x86-v2.4.1.zip
mv ./qshell-linux-x86-v2.4.1 qshell
export PATH=$root/myscripts:$PATH
./qshell account ${QQ_AccessKey} ${QQ_SecretKey} ${QQ_Name}

# upload
yarn qiniu