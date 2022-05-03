function cnx --wraps='sudo nmcli connection up' --description 'alias cnx=sudo nmcli connection up'
  sudo nmcli connection up $argv; 
end
