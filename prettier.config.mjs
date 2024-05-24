/** @type {import("prettier").Config} */
const config = {
  printWidth: 100,
  bracketSpacing: true,
  tabWidth: 2,
  useTabs: false,
  semi: true,
  singleQuote: true,
  jsxSingleQuote: false,
  arrowParens: 'always',
  bracketSameLine: false,
  trailingComma: 'es5',
  htmlWhitespaceSensitivity: 'ignore',
  proseWrap: 'always',
  plugins: ['prettier-plugin-astro', 'prettier-plugin-tailwindcss'],
};

export default config;
