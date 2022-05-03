function wttr --wraps='curl https://wttr.in/' --description 'alias wttr=curl https://wttr.in/'
  curl https://wttr.in/$argv; 
end
