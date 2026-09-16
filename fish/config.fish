source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# Start ssh-agent
if not set -q SSH_AUTH_SOCK
    eval (ssh-agent -c) > /dev/null 2>&1
end

# Add ssh GIT key
ssh-add -l > /dev/null 2>&1
if test $status -ne 0
    ssh-add ~/.ssh/git > /dev/null 2>&1
end
