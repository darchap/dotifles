
function backupfile() {
  cp $1 $1.bak
}

function upgrade() {
  if [ "$(command -v nala)" ]; then
    sudo nala upgrade -y
  elif [ "$(command -v apt)" ]; then
    sudo apt update && sudo apt full-upgrade --auto-remove -y
  elif [ "$(command -v dnf)" ]; then
    sudo dnf upgrade --best --allowerasing --refresh -y
  elif [ "$(command -v flatpak)" ]; then
    flatpak upgrade -y
  fi
}

function venvhere {
  if [ "$#" -ne 1 ]; then
    echo "Usage: create_virtualenv [env_name]"
    return 1
  fi

  env_name=$1

  if python3 -m venv $env_name; then
    echo "Virtual environment $env_name created successfully."
    source $env_name/bin/activate
    echo "Virtual environment $env_name activated."
  else
    echo "Error: Virtual environment $env_name could not be created."
    return 1
  fi
}

function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}
