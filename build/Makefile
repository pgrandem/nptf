### Makefile
### ************************************************************************ ###
### makefile using the rep "framework" (rep shared objects)
### For repcoro project
### 24/03/2020
### Pierre GRANDEMANGE
### http://gl.developpez.com/tutoriel/outil/makefile/
### ************************************************************************ ###



### comments
### ----------------------------------------------------------------------------
### 1/  CPLUS_INCLUDE_PATH environnement variable has been set to :
### 			"rep"/repShared/repNamespaces
###				~rep"/repShared/repObjects
### 2/	Carefull on comments, gedit do not see through, see documentation



### particular targets
### ----------------------------------------------------------------------------
.PHONY : clean, mrproper



### variables
### ----------------------------------------------------------------------------
CXX = g++
CXXFLAGS = -Wall -O2
### CXXFLAGS = 
LDFLAGS = `root-config --cflags --glibs`
EXEC = coro.rep
### include folders	: local, namespace, object
LOINC = ../source/include
NSINC = $(repNamespaces)/include
OBINC = $(repObjects)/include
### src folders	: local, namespace, object, data
LOSRC = ../source/src
NSSRC = $(repNamespaces)/src
OBSRC = $(repObjects)/src
### local header folder to add here to CPLUS_INCLUDE_PATH
export CPLUS_INCLUDE_PATH := ${CPLUS_INCLUDE_PATH}:../source/include


### files list
### ----------------------------------------------------------------------------
HEA = $(wildcard $(LOINC)/*.h) \
			$(wildcard $(NSINC)/*.h) $(wildcard $(OBINC)/*.h)

SRC = ../source/main.cc $(wildcard $(LOSRC)/*.cc) \
      $(wildcard $(NSSRC)/*.cc) $(wildcard $(OBSRC)/*.cc)

OBJ = $(SRC:.cc=.o)



### dump some stuff (debug)
### ----------------------------------------------------------------------------
#$(info  $$LOINC is [${LOINC}])
#$(info  $$SRC is [${SRC}])
#$(info  $$HEA is [${HEA}])
#$(info  $$CPLUS_INCLUDE_PATH is [${CPLUS_INCLUDE_PATH}])
#$(info  $$LD_LIBRARY_PATH is [${LD_LIBRARY_PATH}])




### make command: all
### ----------------------------------------------------------------------------
all: $(EXEC) 

### link all .o files
$(EXEC): $(OBJ)
	$(CXX) -o $@ $^ $(LDFLAGS)



### .o files dependancies
### ----------------------------------------------------------------------------
### main.cc need func.h
### func.h need all object and namespace haders, easier
#main.o: main.cc $(LOINC)/func.h
#func.o: func.cc $(HEA)

#main.o: main.cc
#func.o: func.cc

### .cc -> .o all file auto
%.o: %.cc
	$(CXX) -o $@ -c $< $(LDFLAGS)



### make command: clean
### ----------------------------------------------------------------------------
clean:
	rm -rf ../source/main.o
	rm -rf $(LOSRC)/*.o
	rm -rf $(NSSRC)/*.o
	rm -rf $(OBSRC)/*.o



### make command: mrproper
### ----------------------------------------------------------------------------
mrproper: clean
	rm -rf $(EXEC)



