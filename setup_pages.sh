#!/bin/bash

# Setup GitHub Pages automaticamente (Linux/Mac)
# Richiede: GitHub CLI (https://cli.github.com)

echo "🚀 Setup GitHub Pages - Olimpiade degli Artisti"
echo "================================================"
echo ""

# Verifica se GitHub CLI è installato
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI non trovato"
    echo ""
    echo "Installa GitHub CLI da: https://cli.github.com"
    echo ""
    exit 1
fi

echo "✅ GitHub CLI trovato"
echo ""

# Verifica autenticazione
echo "🔐 Verificando autenticazione GitHub..."
if ! gh auth status &> /dev/null; then
    echo "❌ Non sei loggato su GitHub"
    echo ""
    echo "Esegui: gh auth login"
    exit 1
fi

echo "✅ Autenticazione OK"
echo ""

# Abilita Pages
echo "🔧 Abilitando GitHub Pages..."
if gh repo edit xtruel/olimpiadeartisti-preview \
    --enable-pages \
    --pages-source-branch main \
    --pages-source-path /; then
    
    echo "✅ GitHub Pages abilitato!"
    echo ""
    echo "🌐 URL: https://xtruel.github.io/olimpiadeartisti-preview/"
    echo ""
    echo "⏳ Aspetta 1-2 minuti per il deploy..."
    echo "📊 Controlla: https://github.com/xtruel/olimpiadeartisti-preview/actions"
    echo ""
    echo "🎉 Setup completato!"
else
    echo "❌ Errore durante il setup"
    exit 1
fi
