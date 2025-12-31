# 🚀 Quick Start - Olimpiade degli Artisti

## 1️⃣ Creare Repo su GitHub

1. Vai su [github.com/new](https://github.com/new)
2. Nome: `olimpiadeartisti-preview`
3. Visibilità: **Public**
4. Crea

## 2️⃣ Push Codice

```bash
git remote add origin https://github.com/xtruel/olimpiadeartisti-preview.git
git branch -M main
git push -u origin main
```

## 3️⃣ Attivare GitHub Pages

1. **Settings** → **Pages**
2. Source: **GitHub Actions**
3. Salva

## 4️⃣ Verificare Deploy

- Vai su **Actions** della repo
- Aspetta workflow verde ✅
- Visita: `https://xtruel.github.io/olimpiadeartisti-preview/`

## 5️⃣ Aggiungere Artisti

Crea file `src/content/artists/nome.md`:

```markdown
---
name: "Nome Artista"
category: "Pittura"
city: "Città"
techniques: ["Tecnica1"]
image: "/olimpiadeartisti-preview/image.jpg"
---

Bio dell'artista...
```

Aggiungi immagine in `public/artists/`

Commit e push → Sito si aggiorna automaticamente

## 6️⃣ Sviluppo Locale

```bash
npm run dev
# Visita: http://localhost:3000
```

---

## 📁 Struttura Importante

```
src/
├── pages/           # Pagine (Home, Artisti, ecc.)
├── components/      # Componenti (Navbar, Card, ecc.)
├── content/
│   └── artists/     # Profili artisti (Markdown)
└── styles/          # CSS

public/
└── artists/         # Immagini opere

docs/
├── SPEC.md          # Specifica completa
├── TASKS.md         # Task list
└── BRAND.md         # Brand guidelines
```

---

## 📝 Documentazione

- **SETUP_COMPLETO.md** - Riepilogo completo
- **GITHUB_SETUP.md** - Istruzioni GitHub dettagliate
- **docs/SPEC.md** - Specifica progetto
- **docs/TASKS.md** - Task list con priorità
- **docs/BRAND.md** - Brand guidelines

---

## ⚡ Comandi Utili

```bash
npm run dev      # Dev server
npm run build    # Build production
npm run preview  # Preview build
npm install      # Installa dipendenze
```

---

## ✅ Checklist

- [ ] Repo creata su GitHub
- [ ] Codice pushato
- [ ] GitHub Pages attivato
- [ ] Deploy verificato
- [ ] Artisti aggiunti
- [ ] Sito online

---

**Domande?** Contatta Giuseppe: +39 338 810 39 84

**Pronto per il lancio! 🎨**
