#!/bin/bash

npm init svelte@next

yarn install

yarn add -D autoprefixer postcss-cli tailwindcss concurrently cross-env

npx tailwindcss init tailwind.config.cjs

"module.exports = {
  plugins: {
    autoprefixer: {},
    tailwindcss: {},
  },
}" > postcss.config.cjs

"@tailwind base;
@tailwind components;
@tailwind utilities;" > src/styles/tailwind.css

curl "url" > package.json

yarn dev