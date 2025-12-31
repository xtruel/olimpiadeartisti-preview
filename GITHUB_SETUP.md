# Setup GitHub - Olimpiade degli Artisti

## Step 1: Creare la Repo su GitHub

1. Vai su [github.com/new](https://github.com/new)
2. Nome repo: `olimpiadeartisti-preview`
3. Descrizione: "Una piattaforma curatoriale per valorizzare artisti e opere creative"
4. Visibilità: **Public**
5. Crea repo

## Step 2: Push del Codice Locale

```bash
git remote add origin https://github.com/xtruel/olimpiadeartisti-preview.git
git branch -M main
git push -u origin main
```

## Step 3: Configurare GitHub Pages

1. Vai su **Settings** della repo
2. Sezione **Pages** (sinistra)
3. **Source:** Seleziona "GitHub Actions"
4. Salva

Il workflow `.github/workflows/deploy.yml` farà il resto automaticamente.

## Step 4: Verificare il Deploy

1. Vai su **Actions** della repo
2. Aspetta che il workflow "Deploy to GitHub Pages" finisca (verde ✅)
3. Visita: `https://xtruel.github.io/olimpiadeartisti-preview/`

## Step 5: Aggiungere Artisti

Per aggiungere un artista:

1. Crea file in `src/content/artists/nome-artista.md`
2. Formato:
```markdown
---
name: "Nome Artista"
category: "Categoria"
city: "Città"
techniques: ["Tecnica1", "Tecnica2"]
image: "/olimpiadeartisti-preview/image.jpg"
---

Bio e descrizione...
```

3. Aggiungi immagine in `public/artists/`
4. Commit e push
5. Il sito si aggiorna automaticamente

## Step 6: Creare Issue su GitHub (Opzionale)

Se vuoi usare GitHub Issues per tracciare i task:

### Issue 1: SPEC - Olimpiade Artisti Preview
```
Title: SPEC - Olimpiade Artisti Preview (GitHub Pages)

Body:
## Obiettivo
Creare una piattaforma vetrina moderna per valorizzare artisti e opere creative.

## Stack
- Astro + Tailwind
- GitHub Pages
- Markdown per contenuti

## Sitemap
- Home (hero + CTA + categorie)
- Il Progetto (missione, come funziona)
- Artisti (directory con filtri)
- Artista (pagina singola)
- News (articoli)
- Contatti (form)

## Requisiti
- Performance: Lighthouse > 90
- SEO: Meta tags, Open Graph, Sitemap
- Accessibilità: WCAG 2.1 AA
- Mobile-first responsive
- Deploy automatico GitHub Actions

## Stile
Ispirazione: Gigathon.it ma con tono "salone d'arte"
- Layout arioso
- Tipografia: serif titoli, sans UI
- Colori: fondo chiaro/caldo + dettagli scuri
- CTA sobri ma evidenti

## Fasi
1. Layout & Design System ✅
2. Home page ✅
3. Il Progetto ✅
4. Directory Artisti (in progress)
5. Pagina Artista
6. News/Blog
7. Contatti ✅
8. SEO & Meta
9. Deploy ✅
```

### Issue 2: TASK - Directory Artisti + Filtri
```
Title: TASK - Directory Artisti + Filtri

Body:
## Descrizione
Implementare la directory artisti con filtri lato client.

## Subtask
- [ ] Creare collection Astro per artisti
- [ ] Implementare filtri JavaScript (categoria, tecnica, città)
- [ ] Aggiungere 5-10 artisti di esempio
- [ ] Testare filtri e responsive

## Acceptance Criteria
- Gallery grid responsive (3 col desktop, 2 tablet, 1 mobile)
- Filtri funzionanti lato client
- Card artista con hover effect
- Placeholder per artisti vuoti
```

### Issue 3: TASK - Pagina Artista Singola
```
Title: TASK - Pagina Artista Singola

Body:
## Descrizione
Creare template dinamico per pagina artista singola.

## Subtask
- [ ] Template [slug].astro
- [ ] Bio e descrizione
- [ ] Gallery opere
- [ ] Tecniche e info
- [ ] Contatti/social
- [ ] Link back

## Acceptance Criteria
- Pagina carica correttamente
- Tutte le info visibili
- Responsive su mobile
```

## Comandi Utili

```bash
# Sviluppo locale
npm run dev

# Build
npm run build

# Preview build locale
npm run preview

# Aggiungere dipendenze
npm install [package]
```

## Troubleshooting

### Il sito non si aggiorna dopo push
- Aspetta 1-2 minuti
- Controlla Actions per errori
- Svuota cache browser (Ctrl+Shift+Del)

### Immagini non caricate
- Verifica path: `/olimpiadeartisti-preview/image.jpg`
- Controlla che file esista in `public/`
- Prova con path assoluto

### Build fallisce
- Controlla errori in Actions
- Verifica sintassi Markdown
- Prova `npm run build` localmente

## Prossimi Step

1. Aggiungere 5-10 artisti di esempio
2. Implementare filtri avanzati
3. Aggiungere SEO completo
4. Multilingua (IT/EN)
5. Integrare Supabase (Phase 2)

---

**Domande?** Contatta Giuseppe: +39 338 810 39 84
