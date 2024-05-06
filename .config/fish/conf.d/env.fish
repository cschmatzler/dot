set -gx EDITOR nvim
set -gx VISUAL $EDITOR
set -gx PAGER ov
set -gx XDG_CONFIG_HOME $HOME/.config

# rg
set -gx RIPGREP_CONFIG_PATH ~/.config/ripgrep/config

# fzf
set -Ux FZF_DEFAULT_OPTS "\
  --color=bg+:#ccd0da,bg:#eff1f5,spinner:#dc8a78,hl:#d20f39 \
  --color=fg:#4c4f69,header:#d20f39,info:#8839ef,pointer:#dc8a78 \
  --color=marker:#dc8a78,fg+:#4c4f69,prompt:#8839ef,hl+:#d20f39"
