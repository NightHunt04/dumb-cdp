#!/bin/bash
google-chrome \
  --headless \
  --no-sandbox \
  --disable-gpu \
  --remote-debugging-address=0.0.0.0 \
  --remote-debugging-port=9222 \
  --disable-dev-shm-usage \
  --disable-software-rasterizer \
  about:blank
