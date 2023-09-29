function update --description 'Update everything'
  ~
  and echo "Pulling dotfiles..."
  and chezmoi update

  and echo "Updating Homebrew..."
  and brew update
  and brew upgrade --greedy --fetch-head

  and echo "Updating fish..."
  and fisher update
  and fish_update_completions

  and echo "Updating nvim plugins..."
  and nvim --headless "+Lazy! sync" +qa

  and echo "Updating bat..."
  and bat cache --build
end
