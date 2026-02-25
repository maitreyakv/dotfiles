return {
  "yetone/avante.nvim",
  opts = function(_, opts)
    opts.behaviour = opts.behaviour or {}

    opts.behaviour.enable_fastapply = false
    opts.behaviour.auto_approve_tool_permissions = false
    opts.behaviour.auto_apply_diff_after_generation = false
    opts.behaviour.auto_focus_on_diff_view = true
    opts.behaviour.confirmation_ui_style = "inline_buttons"

    return opts
  end,
}
