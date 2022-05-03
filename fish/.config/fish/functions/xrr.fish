function xrr --wraps='sudo xbps-remove -R ' --description 'alias xrr=sudo xbps-remove -R '
  sudo xbps-remove -R  $argv; 
end
