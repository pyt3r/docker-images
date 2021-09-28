#!/bin/bash

declare -a packages=(
  "template"
)


runTestSuite () {

  declare -a inputs=("$@")

  len=${#inputs[@]}

  for (( i=0; i<len; i++ ));
  do
    pkg=${inputs[$i]}
    runTest $pkg
  done

}

runTest () {
  python -c "import $1; $1.test()"
}

cleanTests () {
  rm -rf *.gv
  rm -rf *.gv.pdf
  rm -rf .coverage
}

cleanTests && \
runTestSuite "${packages[@]}" && \
cleanTests
