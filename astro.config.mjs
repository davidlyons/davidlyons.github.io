import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';
import sitemap from '@astrojs/sitemap';
import icon from 'astro-icon';
import tailwind from '@astrojs/tailwind';

// https://icon-sets.iconify.design/

// https://astro.build/config
export default defineConfig({
  site: 'https://davidlyons.dev',
  integrations: [mdx(), sitemap(), icon(), tailwind()],
  compressHTML: false,
  markdown: {
    shikiConfig: {
      theme: 'one-dark-pro', // https://shiki.style/themes
    },
  },
});
