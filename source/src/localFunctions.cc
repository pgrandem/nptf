/// localFunctions.cc
/// ************************************************************************ ///
/// local functions 
/// Pierre GRANDEMANGE
/// 06/11/2023
/// ************************************************************************ ///

/// includes and namespaces
/// ****************************************************************************
/// standard library
#include <iostream>		/// input output streams
/// root classes
/// rep classes
/// rep namespaces
#include "RDump.h"s
// local functions
#include "localFunctions.h"
using namespace std;

/// debug functions
/// ****************************************************************************

/// dumpCheck
/// ----------------------------------------------------------------------------
void dumpCheck()
{ cout << "dumpCheck()" << endl; }

/// dumpGlobals 
/// ----------------------------------------------------------------------------
/// dump the list of global variables
void dumpGlobals()
{
  /// header
  RDump::header("dumpGlobals");
  /// dump the list of global strings
  cout << "gtimerstart:   " 	<< gtimerstart 		<< endl;
  cout << "projectFolder: "		<< projectFolder 	<< endl;
  cout << "dataFolder:    "		<< dataFolder 		<< endl;
  cout << "repNamespaces: " 	<< repNamespaces 	<< endl;
  cout << "repObjects:    "		<< repObjects 		<< endl;
}



