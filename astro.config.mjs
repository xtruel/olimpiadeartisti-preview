import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

// https://astro.build/config
export default defineConfig({
    site: 'https://xtruel.github.io',
    base: '/olimpiadeartisti-preview',
    integrations: [tailwind()],
});
