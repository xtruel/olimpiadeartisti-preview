#!/usr/bin/env python3
"""
Attiva GitHub Pages automaticamente via API
Richiede: pip install requests
"""

import os
import sys
import requests
import json

def activate_github_pages():
    """Attiva GitHub Pages per la repo"""
    
    # Ottieni token da variabile d'ambiente
    token = os.getenv('GITHUB_TOKEN')
    if not token:
        print("❌ Errore: GITHUB_TOKEN non trovato")
        print("\nPer usare questo script:")
        print("1. Crea un token su: https://github.com/settings/tokens")
        print("   - Seleziona scope: 'repo', 'workflow'")
        print("2. Esegui: export GITHUB_TOKEN='your_token'")
        print("3. Esegui: python3 activate_pages.py")
        sys.exit(1)
    
    try:
        # Configura headers
        headers = {
            'Authorization': f'token {token}',
            'Accept': 'application/vnd.github.v3+json',
            'X-GitHub-Api-Version': '2022-11-28'
        }
        
        # URL API
        url = 'https://api.github.com/repos/xtruel/olimpiadeartisti-preview/pages'
        
        # Payload
        payload = {
            'source': {
                'branch': 'main',
                'path': '/'
            },
            'build_type': 'workflow'
        }
        
        print("🔧 Attivando GitHub Pages...")
        print(f"📦 Repo: xtruel/olimpiadeartisti-preview")
        print(f"🌿 Branch: main")
        print(f"📂 Path: /")
        print()
        
        # Invia richiesta
        response = requests.post(url, headers=headers, json=payload)
        
        if response.status_code in [201, 204]:
            print("✅ GitHub Pages attivato!")
            print()
            print("🌐 URL: https://xtruel.github.io/olimpiadeartisti-preview/")
            print()
            print("⏳ Aspetta 1-2 minuti per il deploy...")
            print("📊 Controlla: https://github.com/xtruel/olimpiadeartisti-preview/actions")
            print()
            print("🎉 Setup completato!")
            return True
        else:
            print(f"❌ Errore: {response.status_code}")
            print(f"Risposta: {response.text}")
            return False
            
    except Exception as e:
        print(f"❌ Errore: {e}")
        sys.exit(1)

if __name__ == '__main__':
    activate_github_pages()
