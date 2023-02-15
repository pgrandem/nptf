### repenvar.sh
### ************************************************************************ ###
### environement variables for a "rep" c++ type project.
### Pierre GRANDEMANGE
### 15/02/2023
### ************************************************************************ ###



### documentation
### ----------------------------------------------------------------------------
### export: https://stackoverflow.com/questions/1158091/defining-a-variable-with-or-without-export



### rep c++ framework shared objects, functions, data...
### "mainFolder" is the top folder. All other paths are referenced to this one.
### ----------------------------------------------------------------------------
#export mainFolder="$(cd "$(dirname "$1")" && pwd -P)/$(basename "$1")"
export mainFolder=$(pwd)

### cppshare git submodule paths
export cppshare=$mainFolder/cppshare
export repNamespaces=$cppshare/repNamespaces
export repObjects=$cppshare/repObjects

### update path to use executable everywhere
export PATH=$mainFolder/build:${PATH}

### c++ / makefile / ROOT nonsense to make it work
#export CPLUS_INCLUDE_PATH="${CPLUS_INCLUDE_PATH:+${CPLUS_INCLUDE_PATH}:}$repNamespaces/include:$repObjects/include"



$CP	
