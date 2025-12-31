# SPEC: Olimpiade degli Artisti v2 (MVP)

## Obiettivo

Creare una piattaforma vetrina moderna e performante per valorizzare artisti e opere creative. MVP statico su GitHub Pages con possibilità di evoluzione futura verso backend.

## Stack Tecnologico

- **Astro** - Framework statico ultra-veloce
- **Tailwind CSS** - Styling utility-first
- **GitHub Pages** - Hosting gratuito
- **Markdown** - Gestione contenuti (artisti, articoli)

## Sitemap

```
/                           Home (hero + CTA + categorie)
/progetto                   Il Progetto (missione, come funziona)
/artisti                    Directory artisti con filtri
/artisti/[slug]             Pagina singola artista
/news                       Articoli e news
/contatti                   Form contatti
```

## Stile & Brand

**Ispirazione:** Gigathon.it ma con tono "salone d'arte" / istituzionale

- Layout arioso e pulito
- Tipografia: serif per titoli, sans per UI
- Colori: fondo chiaro/caldo + dettagli scuri + 1 accento moderno
- CTA sobri ma evidenti ("Esplora", "Candidati", "Scopri")
- Gallery museum-style

## Requisiti Funzionali

### Home
- [ ] Hero con titolo + sottotitolo + 2 CTA
- [ ] Sezione "Il Progetto" con preview
- [ ] Grid categorie artistiche
- [ ] CTA finale "Candidati"

### Il Progetto
- [ ] Missione
- [ ] Come funziona (step-by-step)
- [ ] Categorie artistiche (lista completa)
- [ ] Perché partecipare

### Directory Artisti
- [ ] Gallery grid (3 colonne desktop, responsive)
- [ ] Filtri lato client: categoria, tecnica, città
- [ ] Card artista: immagine + nome + categoria
- [ ] Hover effect su card

### Pagina Artista
- [ ] Bio e descrizione
- [ ] Gallery opere (immagini/video)
- [ ] Tecniche utilizzate
- [ ] Città/Ubicazione
- [ ] Contatti e social
- [ ] Link back a directory

### News/Blog
- [ ] Lista articoli con data
- [ ] Pagina articolo singolo
- [ ] Metadata (autore, data, categoria)

### Contatti
- [ ] Informazioni (email, telefono, social)
- [ ] Form contatti (nome, email, messaggio)
- [ ] Mappa (opzionale)

## Requisiti Non-Funzionali

- [ ] Performance: Lighthouse score > 90
- [ ] SEO: Meta tags, Open Graph, Sitemap
- [ ] Accessibilità: WCAG 2.1 AA
- [ ] Mobile-first responsive
- [ ] Multilingua (IT/EN) - Phase 2
- [ ] Deploy automatico GitHub Actions

## Gestione Contenuti

**Artisti:** File Markdown in `src/content/artists/`
```markdown
---
name: "Nome"
category: "Categoria"
city: "Città"
techniques: ["Tecnica1", "Tecnica2"]
image: "/artists/image.jpg"
---
Bio e descrizione...
```

**Articoli:** File Markdown in `src/content/posts/`

**Immagini:** Cartella `public/artists/`

## Fasi di Implementazione

### Phase 1 (MVP Base)
- [ ] Layout & Design System
- [ ] Home page
- [ ] Il Progetto
- [ ] Directory artisti (statica)
- [ ] Pagina artista
- [ ] Contatti

### Phase 2 (Enhancements)
- [ ] News/Blog
- [ ] Filtri avanzati
- [ ] SEO completo
- [ ] Multilingua
- [ ] Analytics

### Phase 3 (Backend)
- [ ] Supabase integration
- [ ] Admin panel
- [ ] Upload opere
- [ ] Votazioni
- [ ] Pagamenti

## Deploy

GitHub Actions automatico su push a `main`:
- Build Astro
- Deploy a GitHub Pages
- URL: `https://xtruel.github.io/olimpiadeartisti-preview/`

## Note

- Contenuti gestiti via commit (no CMS per MVP)
- Filtri lato client (JavaScript vanilla)
- Immagini ottimizzate (Astro Image)
- Zero JavaScript per performance
