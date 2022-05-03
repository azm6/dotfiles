function xi --wraps='sudo xbps-install -S' --description 'alias xi=sudo xbps-install -S'
  sudo xbps-install -S $argv; 
end
