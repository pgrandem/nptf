### repenvar.sh
### ************************************************************************ ### ### environement variables for a "rep" c++ type project.
### Pierre GRANDEMANGE
### 16/11/2022
### ************************************************************************ ###

### reference to documentation
### ----------------------------------------------------------------------------
### export: https://stackoverflow.com/questions/1158091/defining-a-variable-with-or-without-export
### ----------------------------------------------------------------------------

### variables to MODIFY here !
### "rep" is the top folder (containing this project and shared cpp tools))
### "project" is this project folder name
### ----------------------------------------------------------------------------
export rep=~/code/cpp
export project=$rep/nptf
export data=$project/data
### ----------------------------------------------------------------------------

### cpp shared tools necessary to run in this environment
export cppshare=$rep/cppshare ### this must be git cloned next to this project
export repNamespaces=$cppshare/repNamespaces
export repObjects=$cppshare/repObjects

### edit path to run the soft from anywhere
export PATH="$PATH:$project/build"

### c++ / makefile / ROOT nonsense to make it work
export CPLUS_INCLUDE_PATH="$project/source/include:$repNamespaces/include:$repObjects/include"

$CP	



