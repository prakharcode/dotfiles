return {
	"echasnovski/mini.comment",
	event = "VeryLazy",
	opts = {
		options = {
			-- Function to compute custom 'commentstring' (optional)
			custom_commentstring = nil,

			-- Whether to ignore blank lines when commenting
			ignore_blank_line = false,

			-- Whether to ignore blank lines in actions and textobject
			start_of_line = false,

			-- Whether to force single space inner padding for comment parts
			pad_comment_parts = true,
		},

		-- Module mappings. Use `''` (empty string) to disable one.
		mappings = {
			-- Toggle comment (like `gcip` - comment inner paragraph) for both
			-- Normal and Visual modes
			comment = "mc",

			-- Toggle comment on current line
			comment_line = "mcc",

			-- Toggle comment on visual selection
			comment_visual = "mvc",
		},
	},
}
