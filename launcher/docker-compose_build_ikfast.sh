#! /bin/bash
#
# docker-compose_build_ikfast.sh
# Copyright (C) 2022 morita <masamorobo(a)gmail.com>
#

set -eu

docker-compose -f docker-compose.yaml build

exit 0
