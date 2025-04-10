import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
// export default defineConfig({
//   plugins: [react()],
// })
export default defineConfig({
  plugins: [react()],
  server: {
    port: 5173,   // Ensures Vite uses port 5173
    host: '0.0.0.0',   // Exposes the server to all network interfaces, making it accessible from Docker
    strictPort: true,  // Ensures Vite will fail if port 5173 is already in use
  },
})