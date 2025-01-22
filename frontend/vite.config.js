import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],

  // This ensures that when you run npm run build, Vite places the CSS and JS  files in the correct location that Django expects.

  build: {
    outDir: '../static',  // Output to Django's static folder
    assetsDir: 'assets',  // Put all static assets in an 'assets' directory
  },

})