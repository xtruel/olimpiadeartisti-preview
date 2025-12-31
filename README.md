# Olimpiade degli Artisti - Preview

Una piattaforma curatoriale moderna per valorizzare opere creative, talenti ed eccellenze artistiche.

## Stack Tecnologico

- **Astro** - Framework statico ultra-veloce
- **Tailwind CSS** - Utility-first CSS framework
- **GitHub Pages** - Hosting gratuito e automatico

## Struttura Progetto

```
src/
├── pages/           # Pagine del sito (Home, Artisti, News, ecc.)
├── components/      # Componenti riutilizzabili (Navbar, Footer, Card, ecc.)
├── layouts/         # Layout principali
├── content/
│   ├── artists/     # Profili artisti (Markdown)
│   └── posts/       # Articoli/News (Markdown)
└── styles/          # Stili globali

public/
└── artists/         # Immagini opere artistiche
```

## Pagine Principali

- **Home** (`/`) - Hero + CTA + Categorie
- **Il Progetto** (`/progetto`) - Missione e come funziona
- **Artisti** (`/artisti`) - Directory con filtri
- **Artista** (`/artisti/[slug]`) - Pagina singola artista
- **News** (`/news`) - Articoli e aggiornamenti
- **Contatti** (`/contatti`) - Form contatti

## Come Aggiungere Artisti

1. Crea un file Markdown in `src/content/artists/`
2. Formato:
```markdown
---
name: "Nome Artista"
category: "Categoria"
city: "Città"
image: "/artists/image.jpg"
---

Bio e descrizione dell'artista...
```

3. Aggiungi l'immagine in `public/artists/`
4. Commit e push - il sito si aggiorna automaticamente

## Sviluppo Locale

```bash
npm install
npm run dev
```

Visita `http://localhost:3000`

## Build

```bash
npm run build
```

## Deploy

Il sito si deploya automaticamente su GitHub Pages quando fai push su `main`.

URL: `https://xtruel.github.io/olimpiadeartisti-preview/`

## Prossimi Step

- [ ] Aggiungere profili artisti
- [ ] Implementare filtri avanzati
- [ ] Aggiungere pagina artista dinamica
- [ ] SEO e Open Graph
- [ ] Sitemap
- [ ] Multilingua (IT/EN)
