#!/bin/bash

set -euo pipefail

create_symlink() {
  SRC_RELATIVE=$1
  DEST=$2
  SRC=$HOME/config/$SRC_RELATIVE

  if [[ -f "$DEST" ]]; then
    echo "File $DEST already exist. Skipping."
  else
    ln -s $SRC $DEST
    echo "Symlink symlink $DEST created."
  fi
}

create_symlink gitconfig $HOME/.gitconfig 
create_symlink gitignore $HOME/.gitignore
create_symlink tmux.conf $HOME/.tmux.conf 

