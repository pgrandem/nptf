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
export rep=~/private/alpha/rep
### relative paths
export repNamespaces=$rep/cppShare/repNamespaces
export repObjects=$rep/cppShare/repObjects



### c++ / makefile / ROOT nonsense to make it work
export CPLUS_INCLUDE_PATH="${CPLUS_INCLUDE_PATH:+${CPLUS_INCLUDE_PATH}:}$repNamespaces/include:$repObjects/include"



$CP	
