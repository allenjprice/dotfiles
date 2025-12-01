# Dotfiles

My personal collection of configs for my zshell, neovim, etc.

## TODO

- [x] list of packages
- [ ] setup instructions
- [ ] bash scripts to automate setup, perhaps?
- [ ] get ghostty config in here
- [ ] get zshrc in here
- [ ] other configs?

## deps from homebrew

- fonts
  - font-caskaydia-cove-nerd-font
  - font-meslo-lg-nerd-font
  - font-monaspice-nerd-font
  - font-noto-sans-symbols-2
  - font-symbols-only-nerd-font
  - font-sf-mono-nerd-font (brew tap epk/epk first)
- other packages
  - ghostty
  - neovim
  - ripgrep
  - yazi (probably)
  - zoxide (proably)
  - bat
  - powerlevel10k (or maybe starship, make up your mind)
  - gh
  - lazygit
  - fd
  - stow
  - yarn
  - jq
  - fzf
  - zsh-completions
  - aerospace

## install from not homebrew

- homebrew
- nvm
- oh-my-zsh

## after install: update `.zshrc`

after installing everything, add the following to your local .zshrc

```sh
# --- make nvim default editor ----
export EDITOR=nvim

# --- easy clear ---
alias c="clear"

# ---- Eza -----

alias ls="eza --icons=always"

# ---- Zoxide ----
eval "$(zoxide init zsh)"
alias cd="z"

# ---- fzf ----
source <(fzf --zsh)

# ---- sesh ----

# sesh connect, but list sessions in fzf for easy times
function sf() {
  local session

  # store fzf options as an array
  local -a FZF_OPTS=(
    --no-sort
    --ansi
    --border-label ' sesh '
    --prompt '⚡  '
    --header '  ^a all ^t tmux ^x zoxide'
    --bind 'ctrl-a:change-prompt(⚡  )+reload(sesh list --icons)'
    --bind 'ctrl-t:change-prompt(🪟  )+reload(sesh list -t --icons)'
    --bind 'ctrl-x:change-prompt(📁  )+reload(sesh list -z --icons)'
    --preview-window 'right:55%'
    --preview 'sesh preview {}'
  )

  # run fzf with the array expanded properly
  session="$(sesh list --icons | fzf "${FZF_OPTS[@]}")" || return 0

  # exit if cancelled
  [[ -z $session ]] && return 0

  sesh connect "$session"
}

# ----- Bat -----

export BAT_THEME=tokyonight_storm

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

## keyboard layout

https://configure.zsa.io/voyager/layouts/JRX67/latest/0
