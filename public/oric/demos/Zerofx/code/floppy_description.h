//
// Floppy layout generated by FloppyBuilder 0.18
//

#ifdef ASSEMBLER
//
// Information for the Assembler
//
#ifdef LOADER
FileStartSector .byt 4,8,13,16,1,8,13,2,9,12,1,13,2,15,2,3,6,12,1
FileStartTrack .byt 0,0,2,2,3,3,3,4,4,5,6,6,7,7,8,8,8,8,9
FileStoredSizeLow .byt <1024,<9776,<560,<447,<1598,<1080,<1413,<1775,<5087,<1307,<2834,<1503,<3288,<954,<162,<692,<1332,<1504,<3912
FileStoredSizeHigh .byt >1024,>9776,>560,>447,>1598,>1080,>1413,>1775,>5087,>1307,>2834,>1503,>3288,>954,>162,>692,>1332,>1504,>3912
FileSizeLow .byt <1024,<36176,<760,<576,<6000,<2080,<8000,<8000,<8000,<5680,<5680,<5680,<10000,<2140,<450,<792,<5680,<8000,<6750
FileSizeHigh .byt >1024,>36176,>760,>576,>6000,>2080,>8000,>8000,>8000,>5680,>5680,>5680,>10000,>2140,>450,>792,>5680,>8000,>6750
FileLoadAdressLow .byt <64512,<1024,<39168,<40960,<40960,<40960,<40960,<40960,<40960,<40960,<40960,<40960,<40960,<40960,<40960,<40960,<40960,<40960,<49152
FileLoadAdressHigh .byt >64512,>1024,>39168,>40960,>40960,>40960,>40960,>40960,>40960,>40960,>40960,>40960,>40960,>40960,>40960,>40960,>40960,>40960,>49152
#endif // LOADER
#else
//
// Information for the Compiler
//
#endif

//
// Summary for this floppy building session:
//
#define FLOPPY_SIDE_NUMBER 2    // Number of sides
#define FLOPPY_TRACK_NUMBER 42    // Number of tracks
#define FLOPPY_SECTOR_PER_TRACK 17   // Number of sectors per track

//
// List of files written to the floppy
//
// Entry #0 '..\build\files\loader.o'
// - Loads at address 64512 starts on track 0 sector 4 and is 4 sectors long (1024 bytes).
// Entry #1 '..\build\files\slideshow.o'
// - Loads at address 1024 starts on track 0 sector 8 and is 39 sectors long (9776 compressed bytes: 27% of 36176 bytes).
// Entry #2 '..\build\files\Font6x8_ArtDeco.hir'
// - Loads at address 39168 starts on track 2 sector 13 and is 3 sectors long (560 compressed bytes: 73% of 760 bytes).
// Entry #3 '..\build\files\Font6x6.hir'
// - Loads at address 40960 starts on track 2 sector 16 and is 2 sectors long (447 compressed bytes: 77% of 576 bytes).
// Entry #4 '..\build\files\logos_3x120x100.hir'
// - Loads at address 40960 starts on track 3 sector 1 and is 7 sectors long (1598 compressed bytes: 26% of 6000 bytes).
// Entry #5 '..\build\files\kindergarden_240.hir'
// - Loads at address 40960 starts on track 3 sector 8 and is 5 sectors long (1080 compressed bytes: 51% of 2080 bytes).
// Entry #6 '..\build\files\logo_defenceforce.hir'
// - Loads at address 40960 starts on track 3 sector 13 and is 6 sectors long (1413 compressed bytes: 17% of 8000 bytes).
// Entry #7 '..\build\files\demo_credits-fra-out.hir'
// - Loads at address 40960 starts on track 4 sector 2 and is 7 sectors long (1775 compressed bytes: 22% of 8000 bytes).
// Entry #8 '..\build\files\cake_no_flames.hir'
// - Loads at address 40960 starts on track 4 sector 9 and is 20 sectors long (5087 compressed bytes: 63% of 8000 bytes).
// Entry #9 '..\build\files\party_outside.hir'
// - Loads at address 40960 starts on track 5 sector 12 and is 6 sectors long (1307 compressed bytes: 23% of 5680 bytes).
// Entry #10 '..\build\files\badestamp.hir'
// - Loads at address 40960 starts on track 6 sector 1 and is 12 sectors long (2834 compressed bytes: 49% of 5680 bytes).
// Entry #11 '..\build\files\big_screen.hir'
// - Loads at address 40960 starts on track 6 sector 13 and is 6 sectors long (1503 compressed bytes: 26% of 5680 bytes).
// Entry #12 '..\build\files\small_size_screens.hir'
// - Loads at address 40960 starts on track 7 sector 2 and is 13 sectors long (3288 compressed bytes: 32% of 10000 bytes).
// Entry #13 '..\build\files\screens_60x50.hir'
// - Loads at address 40960 starts on track 7 sector 15 and is 4 sectors long (954 compressed bytes: 44% of 2140 bytes).
// Entry #14 '..\build\files\flame_anim_strip.hir'
// - Loads at address 40960 starts on track 8 sector 2 and is 1 sectors long (162 compressed bytes: 36% of 450 bytes).
// Entry #15 '..\build\files\bonfire_anim_strip.hir'
// - Loads at address 40960 starts on track 8 sector 3 and is 3 sectors long (692 compressed bytes: 87% of 792 bytes).
// Entry #16 '..\build\files\the_real_party.hir'
// - Loads at address 40960 starts on track 8 sector 6 and is 6 sectors long (1332 compressed bytes: 23% of 5680 bytes).
// Entry #17 '..\build\files\logo_zerofx.hir'
// - Loads at address 40960 starts on track 8 sector 12 and is 6 sectors long (1504 compressed bytes: 18% of 8000 bytes).
// Entry #18 '..\build\files\DecadeReset.ym'
// - Loads at address 49152 starts on track 9 sector 1 and is 16 sectors long (3912 compressed bytes: 57% of 6750 bytes).
//
// 169 sectors used, out of 1428. (11% of the total disk size used)
//
#define LOADER_SLIDESHOW 1
#define LOADER_FONT_6x8_ARTDECO 2
#define LOADER_FONT_6x6 3
#define LOADER_TRIANGLE_LOGOS 4
#define LOADER_KINDERGARDEN_LOGO 5
#define LOADER_DEFENCEFORCE_LOGO 6
#define LOADER_CREDITS 7
#define LOADER_BIRTHDAY 8
#define LOADER_PARTY_OUTSIDE 9
#define LOADER_BADESTAMP 10
#define LOADER_BIGSCREEN 11
#define LOADER_SMALLSCREEN 12
#define LOADER_SCREEN_60x50 13
#define LOADER_FLAME_ANIM 14
#define LOADER_SMOKE_ANIM 15
#define LOADER_REAL_PARTY 16
#define LOADER_TITLE_SCREEN 17
#define LOADER_INTRO_MUSIC 18

//
// Metadata
//
#ifdef METADATA_STORAGE

#endif // METADATA_STORAGE

