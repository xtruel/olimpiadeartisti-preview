#!/bin/bash

# Attiva GitHub Pages automaticamente via API (Linux/Mac)
# Richiede: curl, GitHub Token

echo "🚀 Attivazione GitHub Pages - Olimpiade degli Artisti"
echo "======================================================"
echo ""

# Ottieni token
if [ -z "$GITHUB_TOKEN" ]; then
    echo "❌ Errore: GITHUB_TOKEN non trovato"
    echo ""
    echo "Per usare questo script:"
    echo "1. Crea un token su: https://github.com/settings/tokens"
    echo "   - Seleziona scope: 'repo', 'workflow'"
    echo "2. Esegui: export GITHUB_TOKEN='your_token'"
    echo "3. Esegui: bash activate_pages.sh"
    exit 1
fi

# URL API
URL="https://api.github.com/repos/xtruel/olimpiadeartisti-preview/pages"

# Payload
PAYLOAD='{
  "source": {
    "branch": "main",
    "path": "/"
  },
  "build_type": "workflow"
}'

echo "🔧 Attivando GitHub Pages..."
echo "📦 Repo: xtruel/olimpiadeartisti-preview"
echo "🌿 Branch: main"
echo "📂 Path: /"
echo ""

# Invia richiesta
RESPONSE=$(curl -s -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -d "$PAYLOAD" \
  "$URL")

# Controlla risposta
if echo "$RESPONSE" | grep -q '"status"'; then
    echo "✅ GitHub Pages attivato!"
    echo ""
    echo "🌐 URL: https://xtruel.github.io/olimpiadeartisti-preview/"
    echo ""
    echo "⏳ Aspetta 1-2 minuti per il deploy..."
    echo "📊 Controlla: https://github.com/xtruel/olimpiadeartisti-preview/actions"
    echo ""
    echo "🎉 Setup completato!"
else
    echo "❌ Errore durante l'attivazione"
    echo "Risposta: $RESPONSE"
    exit 1
fi
