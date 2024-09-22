/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  safelist: ['aspect-video', 'aspect-4/3'],
  theme: {
    screens: {
      // TW defaults: https://tailwindcss.com/docs/responsive-design#overview
      // BS defaults: https://getbootstrap.com/docs/5.3/layout/breakpoints/#available-breakpoints
      sm: '576px',
      md: '768px',
      lg: '992px',
      xl: '1200px',
      '2xl': '1400px',
    },
    container: {
      center: true,
      padding: '1rem',
    },
    extend: {
      colors: {
        neutral: {
          750: '#333',
        },
      },
      fontFamily: {
        display: ['Rubik', 'san-serif'],
        sans: ['Inter', 'sans-serif'],
      },
      fontSize: {
        base: [`${15 / 16}rem`, 1.7],
      },
      aspectRatio: {
        '4/3': '4 / 3',
      },
    },
  },
  plugins: [],
  darkMode: 'selector',
  experimental: {
    optimizeUniversalDefaults: true, // removes unused CSS vars from output
  },
};
