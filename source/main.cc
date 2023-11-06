/// main.cc
/// ************************************************************************ ///
/// main.cc for "nptf: Null Project To Fork"
/// Pierre GRANDEMANGE
/// 06/11/2023
/// ************************************************************************ ///



/// standard library
#include <iostream>		/// input output streams
#include <string> 		/// c++ string types
/// rep classes
/// rep namespaces
#include "RDump.h"
/// local functions
#include "localFunctions.h"
/// namespace
using namespace std;



int main(int argc, char* argv[])
{
	/// main intro
	RDump::title("main start");
			
	/// main : here it goes!
	hiRep();
	dumpGlobals();
	for( int i=1; i<argc; ++i  ) { cout << argv[i] << endl; }

	/// main outro
	RDump::title("main end");
	return 0;
}





