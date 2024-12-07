import rss from '@astrojs/rss';
import { getCollection } from 'astro:content';
import { SITE_TITLE, SITE_DESCRIPTION } from '@/consts';

// https://docs.astro.build/en/guides/rss/

export async function GET(context) {
  const posts = (await getCollection('work')).sort(
    (a, b) => b.data.pubDate.valueOf() - a.data.pubDate.valueOf()
  );

  return rss({
    stylesheet: '/rss-styles.xsl',
    title: SITE_TITLE,
    description: SITE_DESCRIPTION,
    site: context.site,
    items: posts.map((post) => ({
      ...post.data,
      link: `/work/${post.id}/`,
    })),
  });

  // const posts = await getCollection('blog');

  // return rss({
  //   title: SITE_TITLE,
  //   description: SITE_DESCRIPTION,
  //   site: context.site,
  //   items: posts.map((post) => ({
  //     ...post.data,
  //     link: `/blog/${post.id}/`,
  //   })),
  // });
}
