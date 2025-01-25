import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';
import sitemap from '@astrojs/sitemap';
import icon from 'astro-icon';
import tailwindcss from '@tailwindcss/vite';

// https://icon-sets.iconify.design/

// https://astro.build/config
export default defineConfig({
  site: 'https://davidlyons.dev',
  vite: { plugins: [tailwindcss()] },
  integrations: [mdx(), sitemap(), icon()],
  compressHTML: false,
  markdown: {
    shikiConfig: {
      theme: 'one-dark-pro', // https://shiki.style/themes
      // remove trailing empty line from <pre> code blocks
      // https://github.com/shikijs/shiki/issues/3#issuecomment-2272168959
      transformers: [
        {
          preprocess(code) {
            if (code.endsWith('\n')) {
              code = code.slice(0, -1);
            }

            return code;
          },
        },
      ],
    },
  },
  // https://docs.astro.build/en/reference/experimental-flags/svg/
  // experimental: {
  //   svg: true,
  // },
});
