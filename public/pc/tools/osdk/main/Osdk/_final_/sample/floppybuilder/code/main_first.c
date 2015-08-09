//
// FLoppyBuilder sample code
// (c) 2015 Dbug / Defence Force
//

#include <lib.h>

#include "floppy_description.h"

// loader_api.s
extern unsigned char LoaderApiEntryIndex;
extern unsigned char LoaderApiAddressLow;
extern unsigned char LoaderApiAddressHigh;
extern char* LoaderApiAddress;

extern void SetLoadAddress();
extern void LoadFile();


void main()
{
	// Load the first picture at the default address specified in the script
	LoaderApiEntryIndex=LOADER_PICTURE_FIRSTPROGRAM;
	LoadFile();

	// Quit and return to the loader
}
