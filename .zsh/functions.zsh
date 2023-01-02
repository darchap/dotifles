
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

function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}
