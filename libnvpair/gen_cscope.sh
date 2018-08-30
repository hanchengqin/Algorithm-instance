#!/bin/sh
#CURRENT_PATH=$(cd `dirname $0`; pwd)
CURRENT_PATH="/home/han/libnvpair"
cscope_file="$CURRENT_PATH/cscope.out"
if [ ! -f "$cscope_file" ] || [ "$1" = "force" ]; then
	find $CURRENT_PATH/ -name "*.h" -o -name "*.c" -o -name "*.cc" > cscope.files
	cscope -Rbkq -i cscope.files
	ctags -R
fi
CSCOPE_DB="$cscope_file"; export CSCOPE_DB

#1，使用source gen_cscope.sh来执行命令，这样执行命令，可以使环境变量CSCOPE_DB生效
#2，该命令需要放在源码目录的首层中执行

