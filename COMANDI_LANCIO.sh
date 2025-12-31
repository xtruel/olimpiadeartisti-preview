#!/bin/bash

# ============================================
# COMANDI LANCIO - Olimpiade degli Artisti
# ============================================

echo "🚀 Olimpiade degli Artisti - Lancio"
echo "===================================="
echo ""

# Step 1: Aggiungere remote GitHub
echo "Step 1: Aggiungere remote GitHub..."
git remote add origin https://github.com/xtruel/olimpiadeartisti-preview.git
echo "✅ Remote aggiunto"
echo ""

# Step 2: Rinominare branch a main
echo "Step 2: Rinominare branch a main..."
git branch -M main
echo "✅ Branch rinominato"
echo ""

# Step 3: Pushare il codice
echo "Step 3: Pushare il codice su GitHub..."
git push -u origin main
echo "✅ Codice pushato"
echo ""

# Step 4: Informazioni finali
echo "🎉 Lancio completato!"
echo ""
echo "Prossimi step:"
echo "1. Vai su GitHub: https://github.com/xtruel/olimpiadeartisti-preview"
echo "2. Settings → Pages → Source: GitHub Actions"
echo "3. Aspetta 1-2 minuti per il deploy"
echo "4. Visita: https://xtruel.github.io/olimpiadeartisti-preview/"
echo ""
echo "Buona fortuna! 🎨"
