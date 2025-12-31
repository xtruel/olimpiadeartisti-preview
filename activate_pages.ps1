# Attiva GitHub Pages automaticamente via API (Windows PowerShell)
# Richiede: GitHub Token

Write-Host "🚀 Attivazione GitHub Pages - Olimpiade degli Artisti" -ForegroundColor Cyan
Write-Host "======================================================" -ForegroundColor Cyan
Write-Host ""

# Ottieni token
$token = $env:GITHUB_TOKEN
if (-not $token) {
    Write-Host "❌ Errore: GITHUB_TOKEN non trovato" -ForegroundColor Red
    Write-Host ""
    Write-Host "Per usare questo script:" -ForegroundColor Yellow
    Write-Host "1. Crea un token su: https://github.com/settings/tokens" -ForegroundColor Yellow
    Write-Host "   - Seleziona scope: 'repo', 'workflow'" -ForegroundColor Yellow
    Write-Host "2. Esegui: `$env:GITHUB_TOKEN='your_token'" -ForegroundColor Yellow
    Write-Host "3. Esegui: .\activate_pages.ps1" -ForegroundColor Yellow
    exit 1
}

try {
    # Configura headers
    $headers = @{
        'Authorization' = "token $token"
        'Accept' = 'application/vnd.github.v3+json'
        'X-GitHub-Api-Version' = '2022-11-28'
    }
    
    # URL API
    $url = 'https://api.github.com/repos/xtruel/olimpiadeartisti-preview/pages'
    
    # Payload
    $payload = @{
        source = @{
            branch = 'main'
            path = '/'
        }
        build_type = 'workflow'
    } | ConvertTo-Json
    
    Write-Host "🔧 Attivando GitHub Pages..." -ForegroundColor Cyan
    Write-Host "📦 Repo: xtruel/olimpiadeartisti-preview" -ForegroundColor Cyan
    Write-Host "🌿 Branch: main" -ForegroundColor Cyan
    Write-Host "📂 Path: /" -ForegroundColor Cyan
    Write-Host ""
    
    # Invia richiesta
    $response = Invoke-WebRequest -Uri $url -Headers $headers -Method Post -Body $payload -ContentType 'application/json'
    
    if ($response.StatusCode -in 201, 204) {
        Write-Host "✅ GitHub Pages attivato!" -ForegroundColor Green
        Write-Host ""
        Write-Host "🌐 URL: https://xtruel.github.io/olimpiadeartisti-preview/" -ForegroundColor Cyan
        Write-Host ""
        Write-Host "⏳ Aspetta 1-2 minuti per il deploy..." -ForegroundColor Yellow
        Write-Host "📊 Controlla: https://github.com/xtruel/olimpiadeartisti-preview/actions" -ForegroundColor Cyan
        Write-Host ""
        Write-Host "🎉 Setup completato!" -ForegroundColor Green
    }
    else {
        Write-Host "❌ Errore: $($response.StatusCode)" -ForegroundColor Red
        Write-Host "Risposta: $($response.Content)" -ForegroundColor Red
    }
}
catch {
    Write-Host "❌ Errore: $_" -ForegroundColor Red
    exit 1
}
