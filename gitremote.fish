# SYNOPSIS
#   gitremote [options]
#
# USAGE
#   Options
#   http {name}
#   ssh {name}
#

function gitremote
  if available git
    set name (git config github.user)
    switch $argv[1]
      case ssh
    	git remote set-url origin git@github.com:$name/$argv[2].git
      case http
    	git remote set-url origin https://github.com/$name/$argv[2].git
    end
  else
    echo "📂  Please install 'sudo apt-get install git' first!"
  end
end
