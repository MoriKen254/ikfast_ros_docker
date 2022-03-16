@echo off
@rem docker-compose_build_ikfast.bat
@rem Copyright (C) 2022 morita <masamorobo(a)gmail.com>

cd ..
docker-compose -f docker-compose.yaml build
