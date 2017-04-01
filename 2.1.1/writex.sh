#!/bin/bash

if [ "$1" == "-h" ] || [ "$1" == "--help" ] || [ $# -eq 0 ] ; then
  echo "Usage: $0 [project name]"
  exit 0
fi

if [ -d "$1" ]; then
  echo "Project $1 already exists"
  ( env UBUNTU_MENUPROXY= texmaker "$1/$1.tex" ) &
  exit 1
fi

mkdir "$1" && cd "$1"
mkdir "img/"

echo "\\documentclass{urticle}
\\inputpaths{}
\\pgfplotsset{compat=1.13}

\\begin{document}


\\end{document}" \
  > "$1.tex"

if [ "$(uname)" == "Linux" ]; then
  xdg-open "$1.tex"
elif [ "$(uname)" == "Darwin" ]; then
  open "$1.tex"
else
  echo "Unknown OS"
fi

echo "# Ignore everything
*
!*/

# But not these files...
!.gitignore
!*.tex
!*.png
!*.eps

# ...even if they are in subdirectories
!*/" \
  > .gitignore

git init
git add -A
git commit -m "Initial commit (toolkitex)"
