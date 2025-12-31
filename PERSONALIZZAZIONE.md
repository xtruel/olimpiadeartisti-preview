# 🎨 Guida Personalizzazione - Olimpiade degli Artisti

## 1. Aggiungere Artisti

### Metodo Rapido

1. Crea file in `src/content/artists/nome-artista.md`
2. Copia template:

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

## Formazione

- Accademia (anno)

## Esposizioni

- Galleria (anno)

## Dichiarazione Artistica

"Citazione..."
```

3. Aggiungi immagine in `public/artists/`
4. Commit e push

### Categorie Disponibili

- Pittura
- Scultura
- Fotografia
- Design
- Illustrazione
- Grafica
- Ceramica
- Tessile
- Video
- Installazione

---

## 2. Personalizzare Colori

### Modifica Tailwind Config

Apri `tailwind.config.mjs` e personalizza:

```javascript
export default {
  theme: {
    extend: {
      colors: {
        primary: '#1F2937',    // Grigio scuro
        accent: '#D4AF37',     // Oro (cambia qui)
      }
    }
  }
}
```

### Colori Suggeriti

- **Oro:** `#D4AF37` (elegante, premium)
- **Blu Scuro:** `#1E3A8A` (moderno)
- **Terracotta:** `#C2410C` (caldo, artistico)
- **Verde Scuro:** `#15803D` (naturale)
- **Viola:** `#7C3AED` (creativo)

---

## 3. Personalizzare Testo

### Logo/Titolo

Modifica `src/components/Navbar.astro`:

```astro
<a href="/" class="text-2xl font-serif font-bold text-gray-900">
  Olimpiade degli Artisti  <!-- Cambia qui -->
</a>
```

### Descrizione Home

Modifica `src/pages/index.astro`:

```astro
<h1 class="text-5xl md:text-6xl font-serif font-bold text-gray-900 mb-6">
  Olimpiade degli Artisti  <!-- Titolo -->
</h1>
<p class="text-xl text-gray-700 mb-8 max-w-2xl mx-auto">
  Una piattaforma curatoriale...  <!-- Sottotitolo -->
</p>
```

### Contatti Footer

Modifica `src/components/Footer.astro`:

```astro
<li><a href="mailto:info@olimpiadeartisti.net">info@olimpiadeartisti.net</a></li>
<li><a href="tel:+393388103984">+39 338 810 39 84</a></li>
```

---

## 4. Aggiungere Articoli/News

1. Crea file in `src/content/posts/titolo-articolo.md`
2. Template:

```markdown
---
title: "Titolo Articolo"
date: 2025-12-31
author: "Nome Autore"
description: "Breve descrizione"
---

Contenuto articolo in Markdown...

## Sezione

Testo...
```

3. Commit e push

---

## 5. Aggiungere Pagine

### Nuova Pagina Semplice

1. Crea file in `src/pages/nome-pagina.astro`
2. Template:

```astro
---
import Layout from '../layouts/Layout.astro';
---

<Layout title="Titolo Pagina" description="Descrizione">
  <section class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16 md:py-24">
    <h1 class="text-5xl font-serif font-bold text-gray-900 mb-12">Titolo</h1>
    
    <!-- Contenuto qui -->
  </section>
</Layout>
```

3. Commit e push
4. Pagina disponibile a `/nome-pagina`

---

## 6. Modificare Stile

### Tailwind Classes

Usa classi Tailwind per modificare stile:

```astro
<!-- Colore testo -->
<p class="text-gray-900">Testo scuro</p>
<p class="text-gray-600">Testo grigio</p>

<!-- Dimensione font -->
<h1 class="text-5xl">Grande</h1>
<p class="text-lg">Normale</p>

<!-- Spacing -->
<div class="mb-8">Margine basso</div>
<div class="px-4">Padding orizzontale</div>

<!-- Hover -->
<a class="hover:text-gray-700 transition">Link</a>

<!-- Responsive -->
<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3">
  <!-- 1 colonna mobile, 2 tablet, 3 desktop -->
</div>
```

### Modificare Componenti

Modifica file in `src/components/`:

- `Navbar.astro` - Navigazione
- `Footer.astro` - Footer
- `ArtistCard.astro` - Card artista
- `SEO.astro` - Meta tags

---

## 7. Aggiungere Immagini

### Immagini Artisti

1. Aggiungi in `public/artists/`
2. Usa path: `/olimpiadeartisti-preview/image.jpg`

### Immagini Generiche

1. Aggiungi in `public/`
2. Usa path: `/olimpiadeartisti-preview/image.jpg`

### Ottimizzazione

- Usa JPG per foto (più piccolo)
- Usa PNG per grafica (trasparenza)
- Comprimi immagini prima di aggiungere
- Dimensioni consigliate: 1200x1200px

---

## 8. SEO e Meta Tags

### Modificare Meta Tags

Ogni pagina ha meta tags automatici. Per personalizzare:

```astro
<Layout 
  title="Titolo Personalizzato"
  description="Descrizione personalizzata"
  image="/olimpiadeartisti-preview/og-image.jpg"
>
```

### Aggiungere Parole Chiave

Modifica `src/components/SEO.astro` per aggiungere keywords:

```astro
<meta name="keywords" content="arte, artisti, olimpiade, creatività" />
```

---

## 9. Aggiungere Social Media

### Link Social Footer

Modifica `src/components/Footer.astro`:

```astro
<li><a href="https://instagram.com/olimpiadeartisti">Instagram</a></li>
<li><a href="https://facebook.com/olimpiadeartisti">Facebook</a></li>
<li><a href="https://linkedin.com/company/olimpiadeartisti">LinkedIn</a></li>
```

### Social Meta Tags

Modifica `src/components/SEO.astro`:

```astro
<meta property="twitter:creator" content="@olimpiadeartisti" />
```

---

## 10. Aggiungere Funzionalità

### Form Contatti

Il form in `/contatti` è statico. Per renderlo funzionante:

**Opzione 1: Formspree**
1. Vai su [formspree.io](https://formspree.io)
2. Crea account
3. Modifica form in `src/pages/contatti.astro`:

```astro
<form action="https://formspree.io/f/YOUR_ID" method="POST">
  <!-- form fields -->
</form>
```

**Opzione 2: Netlify Forms**
1. Deploya su Netlify (non GitHub Pages)
2. Aggiungi `netlify` attribute al form

### Filtri Avanzati

I filtri sono già implementati in `/artisti`. Per aggiungere ricerca:

Modifica `src/pages/artisti.astro` e aggiungi input search.

---

## 11. Multilingua (IT/EN)

### Setup i18n

1. Installa: `npm install astro-i18n`
2. Configura `astro.config.mjs`
3. Crea cartelle: `src/pages/en/` e `src/pages/it/`
4. Duplica pagine in entrambe le lingue

---

## 12. Analytics

### Google Analytics

1. Vai su [analytics.google.com](https://analytics.google.com)
2. Crea proprietà
3. Copia ID tracciamento
4. Aggiungi a `src/layouts/Layout.astro`:

```astro
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

---

## 13. Dominio Personalizzato

### Puntare olimpiadeartisti.net

1. Vai su registrar dominio (GoDaddy, Namecheap, ecc.)
2. Modifica DNS:
   - Type: CNAME
   - Name: www
   - Value: xtruel.github.io
3. Aggiungi in GitHub:
   - Settings → Pages → Custom domain
   - Inserisci: olimpiadeartisti.net

---

## 14. Comandi Utili

```bash
# Sviluppo locale
npm run dev

# Build
npm run build

# Preview build
npm run preview

# Aggiungere dipendenze
npm install [package]

# Aggiornare dipendenze
npm update
```

---

## 15. Troubleshooting

### Immagini non caricate
- Verifica path: `/olimpiadeartisti-preview/image.jpg`
- Controlla che file esista in `public/`

### Build fallisce
- Controlla errori in console
- Verifica sintassi Markdown
- Prova `npm run build` localmente

### Filtri non funzionano
- Controlla console browser (F12)
- Verifica che JavaScript sia abilitato

### Sito non si aggiorna
- Aspetta 1-2 minuti
- Svuota cache browser (Ctrl+Shift+Del)
- Controlla Actions su GitHub

---

## Risorse

- [Astro Docs](https://docs.astro.build)
- [Tailwind Docs](https://tailwindcss.com/docs)
- [Markdown Guide](https://www.markdownguide.org)
- [SEO Best Practices](https://developers.google.com/search)

---

**Domande?** Contatta Giuseppe: +39 338 810 39 84
