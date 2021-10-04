if status is-interactive
  # Commands to run in interactive sessions can go here
  alias vi='nvim -u NONE'
  alias more='nvim -Rp'
  alias vim='nvim'
  alias ll='exa --long --git'
  alias hh='hstr'
  set -g EDITOR /usr/bin/nvim
end

if test -z "$SSH_AUTH_SOCK";
  set -gx SSH_AUTH_SOCK /run/user/1000/ssh-agent.socket
end

starship init fish | source
