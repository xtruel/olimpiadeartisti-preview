#!/usr/bin/env python3
"""
Setup GitHub Pages automaticamente
Richiede: pip install PyGithub
"""

import os
import sys
from github import Github

def setup_github_pages():
    """Configura GitHub Pages per la repo"""
    
    # Ottieni token da variabile d'ambiente
    token = os.getenv('GITHUB_TOKEN')
    if not token:
        print("❌ Errore: GITHUB_TOKEN non trovato")
        print("\nPer usare questo script:")
        print("1. Crea un token su: https://github.com/settings/tokens")
        print("2. Esegui: export GITHUB_TOKEN='your_token'")
        print("3. Esegui: python3 setup_pages.py")
        sys.exit(1)
    
    try:
        # Connetti a GitHub
        g = Github(token)
        repo = g.get_user('xtruel').get_repo('olimpiadeartisti-preview')
        
        print("🔧 Configurando GitHub Pages...")
        print(f"📦 Repo: {repo.full_name}")
        
        # Abilita Pages
        repo.enable_pages(
            source_branch='main',
            source_path='/'
        )
        
        print("✅ GitHub Pages abilitato!")
        print(f"🌐 URL: https://xtruel.github.io/olimpiadeartisti-preview/")
        print("\n⏳ Aspetta 1-2 minuti per il deploy...")
        print("📊 Controlla: https://github.com/xtruel/olimpiadeartisti-preview/actions")
        
    except Exception as e:
        print(f"❌ Errore: {e}")
        sys.exit(1)

if __name__ == '__main__':
    setup_github_pages()
