function ll
  ls -lG $argv
end

function l
  ls -G $argv
end

alias ls="ls -G"
