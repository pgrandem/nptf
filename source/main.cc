/// main.cc
/// ************************************************************************ ///
/// main.cc for "repcoro"
/// Pierre GRANDEMANGE
/// 24/03/2020
/// ************************************************************************ ///



/// includes and namespaces
/// ****************************************************************************
/// standard library
#include <ctime>			/// clock_t, clock(), CLOCKS_PER_SEC
#include <iostream>		/// input output streams
#include <stdlib.h>		/// getenv
#include <cstdlib>		/// run shell command std::system
/// root classes
/// rep classes
#include "RDump.h"
/// rep namespaces
/// local functions
#include "localFunctions.h"
/// namespace
using namespace std;



/// define initialized const global variable (external linkage)
/// ****************************************************************************
/// main timer
extern const clock_t gtimerstart(clock());
/// rep project folders locations, see rep/repenv.sh
extern const std::string rep(getenv("rep"));
extern const std::string repData(getenv("repData"));
extern const std::string repFunctions(getenv("repFunctions"));
extern const std::string repNamespaces(getenv("repNamespaces"));
extern const std::string repObjects(getenv("repObjects"));
extern const std::string repResults(getenv("repResults"));



/// prototypes
/// ****************************************************************************
void hiRep();  							/// hello world test function
void dumpGlobalStrings();		/// dump the global strings



/// main program
/// ****************************************************************************
int main(int argc, char* argv[])
{
	/// main intro
	/// --------------------------------------------------------------------------
	/// intro title
	RDump::title("repgraph main.cc start");
			
	
	
	/// main : here it goes!
	/// --------------------------------------------------------------------------
	/// --------------------------------------------------------------------------
	/// --------------------------------------------------------------------------
	for( int i=0; i<argc; ++i  ) { cout << argv[i] << endl; }
	
	/// --------------------------------------------------------------------------
	/// --------------------------------------------------------------------------
	/// --------------------------------------------------------------------------
	
	
	
	/// main outro
	/// --------------------------------------------------------------------------
	/// outro title
	RDump::title("repgraph main.cc end");
	/// main end computation time
	RDump::timer(gtimerstart); cout << endl;
	/// main return
	return 0;
}





/// functions
/// ****************************************************************************

/// hiRep()
/// ----------------------------------------------------------------------------
/// hello rep test function
void hiRep() { cout << endl << "hello rep!" << endl; }

/// dumpGlobalStrings() 
/// ----------------------------------------------------------------------------
/// dump the list of global strings. the list is edited by hand.
void dumpGlobalStrings()
{
  /// header
  RDump::header("dumpGlobalStrings");
  /// dump the list of global strings
  cout << "rep:           " << rep 						<< endl;
  cout << "repData:       " << repData 				<< endl;
  cout << "repFunctions:  " << repFunctions 	<< endl;
  cout << "repNamespaces: " << repNamespaces	<< endl;
  cout << "repObjects:    " << repObjects 		<< endl;
  cout << "repResults:    " << repResults 		<< endl;
}

