function cdi -d "Interactive cd"
  set origin "$(pwd)"
  set path

  while true
    set dir "$(/bin/ls -a1p "./$path" | grep '/$' | grep -v '^./$' | fzf --height 40%)"

    if test -z "$dir"
      break
    else
      set path "$path$dir"
    end
  end

  cd "$origin/$path"
end
