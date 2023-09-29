function update --description 'Update everything'
  ~
  and echo "Pulling dotfiles..."
  and yadm pull --rebase

  and echo "Running bootstrap script..."
  and bootstrap personal

  and echo "Updating fish..."
  and fisher update
  and fish_update_completions

  and echo "Updating nvim plugins..."
  and nvim --headless "+Lazy! sync" +qa

  and echo "Updating bat..."
  and bat cache --build
end
