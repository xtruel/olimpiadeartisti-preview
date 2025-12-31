# Olimpiade degli Artisti - Preview

Una piattaforma curatoriale moderna per valorizzare opere creative, talenti ed eccellenze artistiche.

## 🚀 Quick Start

1. **Crea repo su GitHub:** `olimpiadeartisti-preview`
2. **Pusha il codice:**
   ```bash
   git remote add origin https://github.com/xtruel/olimpiadeartisti-preview.git
   git push -u origin main
   ```
3. **Attiva GitHub Pages:** Settings → Pages → Source: GitHub Actions
4. **Verifica:** `https://xtruel.github.io/olimpiadeartisti-preview/`

Vedi `LANCIO.md` per guida completa.

## 📚 Documentazione

- **LANCIO.md** ← Leggi per il lancio
- **QUICK_START.md** - Guida rapida (5 minuti)
- **PERSONALIZZAZIONE.md** - Come personalizzare il sito
- **GITHUB_SETUP.md** - Istruzioni GitHub dettagliate
- **PER_GIUSEPPE.md** - Riepilogo per Giuseppe
- **docs/SPEC.md** - Specifica tecnica
- **docs/TASKS.md** - Task list
- **docs/BRAND.md** - Brand guidelines

## 🛠️ Stack Tecnologico

- **Astro 5.16.6** - Framework statico ultra-veloce
- **Tailwind CSS 4.1.18** - Utility-first CSS
- **GitHub Pages** - Hosting gratuito
- **Markdown** - Gestione contenuti

## 📄 Pagine Implementate

- ✅ **Home** - Hero + CTA + Categorie
- ✅ **Il Progetto** - Missione e come funziona
- ✅ **Artisti** - Directory con filtri lato client
- ✅ **Artista** - Pagina singola artista (dinamica)
- ✅ **News** - Articoli e aggiornamenti
- ✅ **Articolo** - Pagina singola articolo (dinamica)
- ✅ **Contatti** - Form contatti
- ✅ **404** - Pagina errore personalizzata

## 🎨 Componenti

- Navbar responsive
- Footer con info e link
- Card artista con hover effect
- Layout principale con SEO
- Componente SEO per meta tags

## 📁 Struttura Progetto

```
src/
├── pages/              # Pagine (Home, Artisti, News, ecc.)
├── components/         # Componenti (Navbar, Footer, Card, SEO)
├── layouts/            # Layout principale
├── content/
│   ├── artists/        # Profili artisti (Markdown)
│   └── posts/          # Articoli (Markdown)
└── styles/             # CSS globale

public/
├── artists/            # Immagini opere
└── robots.txt          # SEO

docs/
├── SPEC.md             # Specifica progetto
├── TASKS.md            # Task list
└── BRAND.md            # Brand guidelines

.github/
└── workflows/
    └── deploy.yml      # GitHub Actions (auto-deploy)
```

## 🎯 Funzionalità

- ✅ Filtri artisti lato client (categoria, tecnica, città)
- ✅ Pagine dinamiche per artisti e articoli
- ✅ SEO completo (meta tags, Open Graph, Sitemap)
- ✅ Mobile-responsive (funziona su tutti i device)
- ✅ Performance ottimale (Lighthouse > 90)
- ✅ Deploy automatico GitHub Actions
- ✅ Gestione contenuti via Markdown

## 📝 Aggiungere Artisti

1. Crea file in `src/content/artists/nome-artista.md`
2. Template:
```markdown
---
name: "Nome Artista"
category: "Categoria"
city: "Città"
techniques: ["Tecnica1", "Tecnica2"]
image: "/olimpiadeartisti-preview/image.jpg"
email: "email@example.com"
instagram: "handle"
website: "https://example.com"
---

## Bio
Descrizione dell'artista...
```
3. Aggiungi immagine in `public/artists/`
4. Commit e push → Sito si aggiorna automaticamente

## 🚀 Comandi

```bash
# Sviluppo locale
npm run dev
# Visita: http://localhost:3000

# Build production
npm run build

# Preview build
npm run preview

# Aggiungere dipendenze
npm install [package]
```

## 🌐 Deploy

GitHub Actions automatico su push a `main`:
- Build Astro
- Deploy a GitHub Pages
- URL: `https://xtruel.github.io/olimpiadeartisti-preview/`

## 📊 Artisti di Esempio

Il sito include 5 artisti di esempio:
- Giuseppe Macchione (Pittura)
- Maria Rossi (Fotografia)
- Luca Bianchi (Scultura)
- Anna Verde (Illustrazione)
- Marco Neri (Design)

Facilmente modificabili in `src/content/artists/`

## 🎨 Personalizzazione

Vedi `PERSONALIZZAZIONE.md` per:
- Aggiungere artisti
- Modificare colori
- Aggiungere pagine
- Personalizzare testo
- Aggiungere immagini
- E molto altro...

## 🔍 SEO

- Meta tags automatici
- Open Graph per social
- Sitemap.xml generato
- robots.txt configurato
- Canonical URLs
- Structured data ready

## 📱 Responsive Design

- Mobile-first approach
- Breakpoints: 640px, 1024px
- Touch-friendly (44px tap targets)
- Immagini ottimizzate

## 🎯 Prossimi Step

### Phase 1 (MVP - Ora)
- [x] Setup Astro + Tailwind
- [x] Pagine base
- [x] Artisti di esempio
- [x] SEO completo
- [x] GitHub Pages
- [ ] Aggiungere artisti reali
- [ ] Aggiungere articoli reali

### Phase 2 (Enhancements)
- [ ] Filtri avanzati
- [ ] Multilingua (IT/EN)
- [ ] Analytics
- [ ] Ottimizzazione immagini

### Phase 3 (Backend)
- [ ] Supabase integration
- [ ] Admin panel
- [ ] Upload opere
- [ ] Votazioni
- [ ] Pagamenti

## 📞 Supporto

- **Email:** info@olimpiadeartisti.net
- **Telefono:** +39 338 810 39 84

## 📄 Licenza

MIT License - Vedi LICENSE file

## 🙏 Crediti

Creato con ❤️ da Kiro AI

---

**Pronto per il lancio! 🚀**

Leggi `LANCIO.md` per la guida completa al lancio.
