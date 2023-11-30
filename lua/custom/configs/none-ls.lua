local nls = require("null-ls")
nls.setup({
  sources = {
    nls.builtins.formatting.biome,
    nls.builtins.formatting.prettierd.with({
      filetypes = { "vue", "svelte" }
    }),
  },
})
