return {
	"arminveres/md-pdf.nvim",
	branch = "main", -- you can assume that main is somewhat stable until releases will be made
	lazy = true,
	ft = { "md", "markdown", "mkd", "mkdn", "mdwn", "mdown", "mdtxt", "mdtext", "rmd", "wiki" },
	keys = {
		{
			"<leader>,",
			function()
				require("md-pdf").convert_md_to_pdf()
			end,
			desc = "Markdown preview",
		},
	},
	opts = {},
	config = function()
		require("md-pdf").setup({
			--- Set margins around document
			margins = "1.5cm",
			-- tango, pygments are quite nice for white on white
			highlight = "tango",
			-- Generate a table of contents, on by default
			toc = true,
			-- if true, then the markdown file is continuously converted on each write, even if the
			-- file viewer closed, e.g., firefox is "closed" once the document is opened in it.
			ignore_viewer_state = false,
			-- Specify font, `nil` uses the default font of the theme
			fonts = nil,
			-- Custom options passed to `pandoc` CLI call, can be ignored for setup
			pandoc_user_args = {
				"--include-in-header=header.tex",
			},
		})
	end,
}
