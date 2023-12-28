return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")

        return {
          file_ignore_patterns = {
            "target/**/*",
          },
        }
      end,
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path)
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        json = { "biome" },
        typescript = { "biome" },
        typescriptreact = { "biome" },
      },
    },
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    keys = {
      {
        "<leader>a",
        function()
          require("harpoon"):list():append()
        end,
        desc = { "Append Harpoon" },
      },
      {
        "<C-`>",
        function()
          local conf = require("telescope.config").values
          local harpoon_files = require("harpoon"):list()
          local file_paths = {}
          for _, item in ipairs(harpoon_files.items) do
            table.insert(file_paths, item.value)
          end

          require("telescope.pickers")
            .new({}, {
              prompt_title = "Harpoon",
              finder = require("telescope.finders").new_table({
                results = file_paths,
              }),
              previewer = conf.file_previewer({}),
              sorter = conf.generic_sorter({}),
            })
            :find()
        end,
        { desc = "Open harpoon window" },
      },
      {
        "<C-1>",
        function()
          require("harpoon"):list():select(1)
        end,
        desc = { "Jump to Harpoon 1" },
      },
      {
        "<C-2>",
        function()
          require("harpoon"):list():select(2)
        end,
        desc = { "Jump to Harpoon 2" },
      },
      {
        "<C-3>",
        function()
          require("harpoon"):list():select(3)
        end,
        desc = { "Jump to Harpoon 3" },
      },
    },
    config = function()
      require("harpoon"):setup()
    end,
  },
}
