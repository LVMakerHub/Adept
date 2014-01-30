
#define EXPORT __declspec(dllexport)

#if defined(WIN32)
	
	/* Include Windows specific headers here.
	*/
	#include <windows.h>
	
#endif

#include <stdio.h>
#include <stdlib.h>

#include "include/dpcdecl.h"
#include "include/dmgr.h"


EXPORT char*  getDeviceName(int devIndex);