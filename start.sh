#!/bin/sh
exec jupyter lab \
  --ServerApp.ip=0.0.0.0 \
  --ServerApp.port=${PORT:-8888} \
  --ServerApp.open_browser=False \
  --ServerApp.allow_root=True \
  --ServerApp.token='' \
  --ServerApp.password='' \
  --ServerApp.password_required=False
