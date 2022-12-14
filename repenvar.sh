### repenvar.sh
### ************************************************************************ ###
### environement variables for a "rep" c++ type project.
### Pierre GRANDEMANGE
### 03/03/2022
### ************************************************************************ ###



### reference to documentation
### ----------------------------------------------------------------------------
### export: https://stackoverflow.com/questions/1158091/defining-a-variable-with-or-without-export



### rep c++ framework shared objects, functions, data...
### "rep" is the top folder. All other paths are referenced to this one.
### ----------------------------------------------------------------------------
#export mainFolder="$(cd "$(dirname "$1")" && pwd -P)/$(basename "$1")"
export rep=~/private/alpha/rep
### relative paths
export repNamespaces=$mainFolder/../cppShare/repNamespaces
export repObjects=$mainFolder/../cppShare/repObjects

### update path to use executable everywhere
export PATH=$mainFolder/build:${PATH}

### c++ / makefile / ROOT nonsense to make it work
export CPLUS_INCLUDE_PATH="${CPLUS_INCLUDE_PATH:+${CPLUS_INCLUDE_PATH}:}$repNamespaces/include:$repObjects/include"



$CP	
