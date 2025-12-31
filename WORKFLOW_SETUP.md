# 🔧 Setup GitHub Actions Workflow

Il file `.github/workflows/deploy.yml` richiede permessi speciali per essere pushato via OAuth.

## Soluzione: Aggiungi il Workflow Manualmente

### Step 1: Copia il Contenuto

Copia questo contenuto:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

permissions:
  contents: read
  pages: write
  id-token: write

concurrency:
  group: pages
  cancel-in-progress: false

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout your repository using git
        uses: actions/checkout@v4

      - name: Install, build, and upload your site
        uses: withastro/action@v2
        with:
          path: .
          node-version: '20'
          package-manager: npm

  deploy:
    needs: build
    runs-on: ubuntu-latest
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
```

### Step 2: Aggiungi su GitHub

1. Vai su: https://github.com/xtruel/olimpiadeartisti-preview
2. Clicca **Actions** (in alto)
3. Clicca **New workflow**
4. Clicca **set up a workflow yourself**
5. Incolla il contenuto sopra
6. Nomina il file: `deploy.yml`
7. Clicca **Commit changes**

### Step 3: Attiva GitHub Pages

1. Vai su **Settings** → **Pages**
2. **Source:** Seleziona **GitHub Actions**
3. Clicca **Save**

### Step 4: Verifica Deploy

1. Vai su **Actions**
2. Aspetta che il workflow finisca (verde ✅)
3. Visita: https://xtruel.github.io/olimpiadeartisti-preview/

---

**Sito online! 🚀**

## Alternativa: GitHub CLI

Se hai GitHub CLI installato:

```bash
# Login
gh auth login --scopes workflow

# Pusha il workflow
git push
```

---

Vedi `.github/workflows/deploy.yml` per il file completo.
