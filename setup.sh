#!/bin/bash

npm init svelte@next

yarn install

yarn add -D autoprefixer postcss-cli tailwindcss concurrently cross-env

mkdir src/styles

npx tailwindcss init tailwind.config.cjs

echo "module.exports = {plugins: {autoprefixer: {},tailwindcss: {},},}" > postcss.config.cjs

echo "@tailwind base; @tailwind components; @tailwind utilities;" > src/styles/tailwind.css

curl "https://raw.githubusercontent.com/KoenvdStroom/svelte-setup/master/package.json" > package.json

yarn dev