### gwin.sh
### ************************************************************************ ###
### set gedit windows for "nptf: null project to fork"
### Pierre GRANDEMANGE
### 01/03/2022
### ************************************************************************ ###



### open local files (readme main.cc etc...)
### ----------------------------------------------------------------------------
### all of them
##gedit --new-window	$rep/readme.txt gwin.sh Makefile ../source/main.cc \
##										../source/src/*.cc  ../source/include/*.h &

### selection : main.cc, localFunction.cc(h) 
gedit --new-window		../source/main.cc \
                      ../source/src/*.cc \
                      ../source/include/*.h   &
											
											

### wait for 300ms
### ----------------------------------------------------------------------------
sleep 0.3



### open rep Objects & Namespaces .h files
### ----------------------------------------------------------------------------
### all of them
##gedit --new-window $repObjects/include/*.h	$repNamespaces/include/*.h &

### selection, by alphabetical order
gedit --new-window 	$repNamespaces/include/RDump.h		\
										$repNamespaces/include/RUnits.h		&

### wait for 300ms
### ----------------------------------------------------------------------------
sleep 0.3



### open rep Objects & Namespaces .cc files,then sleep for 300ms
### ----------------------------------------------------------------------------
### all of them
##gedit --new-window $repObjects/src/*.cc	$repNamespaces/src/*.cc &

### selection, by alphabetical order
gedit --new-window 	$repNamespaces/src/RDump.cc			\
										$repNamespaces/src/RUnits.cc		&

### wait for 300ms
### ----------------------------------------------------------------------------
sleep 0.3



