# Setup GitHub Pages automaticamente (Windows PowerShell)
# Richiede: GitHub CLI (https://cli.github.com)

Write-Host "🚀 Setup GitHub Pages - Olimpiade degli Artisti" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# Verifica se GitHub CLI è installato
$ghInstalled = gh --version 2>$null
if (-not $ghInstalled) {
    Write-Host "❌ GitHub CLI non trovato" -ForegroundColor Red
    Write-Host ""
    Write-Host "Installa GitHub CLI da: https://cli.github.com" -ForegroundColor Yellow
    Write-Host ""
    exit 1
}

Write-Host "✅ GitHub CLI trovato" -ForegroundColor Green
Write-Host ""

# Verifica autenticazione
Write-Host "🔐 Verificando autenticazione GitHub..."
$auth = gh auth status 2>&1
if ($auth -match "not logged in") {
    Write-Host "❌ Non sei loggato su GitHub" -ForegroundColor Red
    Write-Host ""
    Write-Host "Esegui: gh auth login" -ForegroundColor Yellow
    exit 1
}

Write-Host "✅ Autenticazione OK" -ForegroundColor Green
Write-Host ""

# Abilita Pages
Write-Host "🔧 Abilitando GitHub Pages..."
try {
    gh repo edit xtruel/olimpiadeartisti-preview `
        --enable-pages `
        --pages-source-branch main `
        --pages-source-path /
    
    Write-Host "✅ GitHub Pages abilitato!" -ForegroundColor Green
    Write-Host ""
    Write-Host "🌐 URL: https://xtruel.github.io/olimpiadeartisti-preview/" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "⏳ Aspetta 1-2 minuti per il deploy..." -ForegroundColor Yellow
    Write-Host "📊 Controlla: https://github.com/xtruel/olimpiadeartisti-preview/actions" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "🎉 Setup completato!" -ForegroundColor Green
}
catch {
    Write-Host "❌ Errore durante il setup: $_" -ForegroundColor Red
    exit 1
}
