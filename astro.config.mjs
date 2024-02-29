import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';
import sitemap from '@astrojs/sitemap';
import icon from 'astro-icon';
import purgecss from 'astro-purgecss';

// https://icon-sets.iconify.design/

// https://astro.build/config
export default defineConfig({
  site: 'https://davidlyons.dev',
  integrations: [mdx(), sitemap(), icon(), purgecss()],
  compressHTML: false,
  markdown: {
    shikiConfig: {
      theme: 'one-dark-pro', // https://shiki.style/themes
    },
  },
});
