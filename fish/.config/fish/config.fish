export PATH="$HOME/.cargo/bin:$HOME/.local/bin:/var/lib/flatpak/exports/bin:/usr/games:$PATH"

export EDITOR=/usr/bin/nvim
export MPD_HOST=127.0.0.1
export MPD_PORT=6601
set -x GPG_TTY (tty)
# source "$HOME/.cargo/env"

if status is-interactive
    setxkbmap -option caps:escape
    # Remove the greeting
    set -U fish_greeting 
    # Emulates vim's cursor shape behavior
    # Set the normal and visual mode cursors to a block
    set fish_cursor_default block
    # Set the insert mode cursor to a line
    set fish_cursor_insert line
    # Set the replace mode cursor to an underscore
    set fish_cursor_replace_one underscore
    # The following variable can be used to configure cursor shape in
    # visual mode, but due to fish_cursor_default, is redundant here
    set fish_cursor_visual block
end

