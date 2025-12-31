# 🚀 GitHub Pages Setup Automatico

Questo file contiene le istruzioni per attivare GitHub Pages.

## Metodo 1: Automatico (Consigliato)

Se hai accesso a GitHub CLI:

```bash
# Installa GitHub CLI: https://cli.github.com

# Login
gh auth login

# Abilita Pages
gh repo edit xtruel/olimpiadeartisti-preview \
  --enable-pages \
  --pages-source-branch main \
  --pages-source-path /
```

## Metodo 2: Manuale (Via Browser)

1. Vai su: https://github.com/xtruel/olimpiadeartisti-preview/settings/pages
2. **Source:** Seleziona "GitHub Actions"
3. Clicca **Save**
4. Aspetta 1-2 minuti
5. Visita: https://xtruel.github.io/olimpiadeartisti-preview/

## Metodo 3: Tramite API

```bash
curl -X POST \
  -H "Authorization: token YOUR_GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/xtruel/olimpiadeartisti-preview/pages \
  -d '{"source":{"branch":"main","path":"/"},"build_type":"workflow"}'
```

## Verifica Deploy

1. Vai su: https://github.com/xtruel/olimpiadeartisti-preview/actions
2. Aspetta che il workflow "Deploy to GitHub Pages" finisca (verde ✅)
3. Visita: https://xtruel.github.io/olimpiadeartisti-preview/

---

**Il sito sarà online in 1-2 minuti! 🎉**
