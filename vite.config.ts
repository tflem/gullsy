import { defineConfig } from "vite";
import RubyPlugin from "vite-plugin-ruby";
import WindiCSS from "vite-plugin-windicss";
import FullReload from "vite-plugin-full-reload";

export default defineConfig({
  build: {
    chunkSizeWarningLimit: 1500,
    sourcemap: false,
    rollupOptions: {
      output: {
        manualChunks(id) {
          if (id.includes("node_modules")) {
            return id
              .toString()
              .split("node_modules/")[1]
              .split("/")[0]
              .toString();
          }
        },
      },
    },
  },
  plugins: [
    RubyPlugin(),
    WindiCSS({
      root: __dirname,
      scan: {
        fileExtensions: [
          "erb",
          "haml",
          "html",
          "vue",
          "js",
          "ts",
          "jsx",
          "tsx",
        ],
        dirs: ["app/views", "app/javascript"],
      },
    }),
    FullReload(["config/routes.rb", "app/views/**/*"], { delay: 200 }),
  ],
});
