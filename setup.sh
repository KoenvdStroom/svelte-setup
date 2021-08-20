#!/bin/bash

npm init svelte@next

yarn install

yarn add -D autoprefixer postcss-cli tailwindcss concurrently cross-env

mkdir src/styles

echo "module.exports = {plugins: {autoprefixer: {},tailwindcss: {},},}" > postcss.config.cjs

echo "@tailwind base; @tailwind components; @tailwind utilities;" > src/styles/tailwind.css

curl "https://raw.githubusercontent.com/KoenvdStroom/svelte-setup/master/package.json" > package.json

echo " <script>import \"../styles/tailwind-output.css\";</script>" > src/routes/__layout.svelte

curl "https://raw.githubusercontent.com/KoenvdStroom/svelte-setup/master/tailwind.config.cjs" > tailwind.config.cjs

yarn dev