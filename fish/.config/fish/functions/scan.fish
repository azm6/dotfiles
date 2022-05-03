function scan --wraps='sudo arp-scan -l' --description 'alias scan=sudo arp-scan -l'
  sudo arp-scan -l $argv; 
end
