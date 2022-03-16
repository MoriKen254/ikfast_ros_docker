#! /bin/bash
#
# start.sh
# Copyright (C) 2022 Masaru Morita <masamorobo(a)gmail.com>
#
if [ $# -eq 0 ]
then
    echo "Please input robot model name"
    exit 1
fi

DATE = date '+%y%m%d'
echo $DATE