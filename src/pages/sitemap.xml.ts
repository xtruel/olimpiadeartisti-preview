import { getCollection } from 'astro:content';

export async function GET() {
  const artists = await getCollection('artists');
  
  const pages = [
    { url: '/', lastmod: new Date().toISOString().split('T')[0] },
    { url: '/progetto', lastmod: new Date().toISOString().split('T')[0] },
    { url: '/artisti', lastmod: new Date().toISOString().split('T')[0] },
    { url: '/news', lastmod: new Date().toISOString().split('T')[0] },
    { url: '/contatti', lastmod: new Date().toISOString().split('T')[0] },
  ];

  const artistPages = artists.map(artist => ({
    url: `/artisti/${artist.slug}`,
    lastmod: new Date().toISOString().split('T')[0],
  }));

  const allPages = [...pages, ...artistPages];

  const sitemap = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${allPages.map(page => `  <url>
    <loc>https://xtruel.github.io/olimpiadeartisti-preview${page.url}</loc>
    <lastmod>${page.lastmod}</lastmod>
    <changefreq>weekly</changefreq>
    <priority>${page.url === '/' ? '1.0' : '0.8'}</priority>
  </url>`).join('\n')}
</urlset>`;

  return new Response(sitemap, {
    headers: {
      'Content-Type': 'application/xml',
    },
  });
}
