import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import path from 'path'  

// https://vitejs.dev/config/
export default {
  plugins: [vue()],
  resolve: {
    alias: {
      '@': path.resolve(__dirname, 'src')
    }
  },
  server: {
    
    //配置跨域请求列表
    proxy: {
        '/api': {
            target: 'http://localhost:1919',   //实际请求地址
            changeOrigin: true,
            rewrite: (path) => path.replace(/^\/api/, '') // 使用 /api 前缀作为代理标识
        },
    },
    
  }
}
