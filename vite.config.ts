import { defineConfig } from "vite";
import RubyPlugin from "vite-plugin-ruby";
import WindiCSS from "vite-plugin-windicss";

export default defineConfig({
  build: {
    chunkSizeWarningLimit: 1500,
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
      safelist: "prose prose-sm m-auto",
      transformGroups: false,
    }),
  ],
});
