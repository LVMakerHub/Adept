#include "lvhadept.h"

DVC deviceHandle;

bool DllMain(HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpReserved ) 
{
	switch( fdwReason ) 
    { 
        case DLL_PROCESS_ATTACH:
         // Initialize once for each new process.
         // Return FALSE to fail DLL load.
            break;

        case DLL_THREAD_ATTACH:
         // Do thread-specific initialization.
            break;

        case DLL_THREAD_DETACH:
         // Do thread-specific cleanup.
            break;

        case DLL_PROCESS_DETACH: 
         // Perform any necessary cleanup.
            break;
    }
    return TRUE;  // Successful DLL_PROCESS_ATTACH.
}

DVC* getDeviceHandle()
{
	return &deviceHandle;
}

char* getDeviceName(int devIndex)
{
	if (DmgrGetDvc(devIndex, &deviceHandle))
	{
		//Dev Exists, Return Name
		return (char*)&(deviceHandle.szName);
	}
	else
	{
		return 0;
	}
}
