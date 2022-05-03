function xr --wraps='sudo xbps-remove' --description 'alias xr=sudo xbps-remove'
  sudo xbps-remove $argv; 
end
