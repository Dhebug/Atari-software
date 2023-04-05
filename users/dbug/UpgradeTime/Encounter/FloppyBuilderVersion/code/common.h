
#include "params.h"

#include "loader_api.h"

// Irq
extern void System_InstallIRQ_SimpleVbl();
extern void System_RestoreIRQ_SimpleVbl();
extern void WaitIRQ();
extern void Panic();                         // Stop the program while blinking the bottom right corner with psychedelic colors

extern unsigned char VblCounter;

// Keyboard
extern char WaitKey();
extern char ReadKey();
extern char ReadKeyNoBounce();

extern unsigned char KeyBank[8]; // .dsb 8   ; The virtual Key Matrix


// Display
extern unsigned char ImageBuffer[40*200];    // Compositing buffer, used to mix together the scene image, frame, arrows, etc...
extern char gFlagDirections;                 // Bit flag containing all the possible directions for the current scene (used to draw the arrows on the scene)
extern char gSevenDigitDisplay[];            // Bitmap to redefine a few characters so they look like an old style watch drawn with LED or LCD segments
extern char gFont12x14[];                    // The 12x14 italics font
extern unsigned char gFont12x14Width[];      // Width (in pixel) of each of the characters in the fancy font
extern unsigned char gTableModulo6[];        // Given a X value, returns the value modulo 6 (used to access the proper pixel in a graphical block)
extern unsigned char gTableDivBy6[];         // Given a X value, returns the value divided by 6 (used to locate the proper byte in a scanline)
extern unsigned char gTableMulBy40Low[];     // Given a x value, returns the low byte of the value multiplied by 40 (used to locate the proper scanline)
extern unsigned char gTableMulBy40High[];    // Given a x value, returns the high byte of the value multiplied by 40 (used to locate the proper scanline)
extern unsigned char gShiftBuffer[];         // Used to display graphics at any arbitrary position instead of on multiples of 6
extern unsigned char gBitPixelMask[];        // Bitmap with each possible combination of pixel to mask to draw a vertical line
extern unsigned char gBitPixelMaskLeft[];    // Bitmap with each possible left endings - used to draw horizontal segments
extern unsigned char gBitPixelMaskRight[];   // Bitmap with each possible right endings - used to draw horizontal segments

extern unsigned char* gDrawAddress;
extern const char* gDrawExtraData;
extern unsigned char gDrawPosX;
extern unsigned char gDrawPosY;
extern unsigned char gDrawWidth;
extern unsigned char gDrawHeight;
extern unsigned char gDrawPattern;


// Audio
extern void PlaySound(const char* registerList);

extern char PsgNeedUpdate;
extern char PsgVirtualRegisters[];
extern char ExplodeData[];
extern char ShootData[];
extern char PingData[];
extern char ZapData[];
extern char KeyClickHData[];
extern char KeyClickLData[];


// Common
extern void SetLineAddress(char* address);
extern void PrintLine(const char* message);
extern void PrintWord(const char* message);

extern void Text(char paperColor,char inkColor);
extern void Hires(char paperColor,char inkColor);
extern void WaitFrames(int frames);

extern char gIsHires;
extern char* gPrintAddress;


// game_misc
extern const char* PrintFancyFont();
extern void DrawFilledRectangle();
extern void DrawVerticalLine();
extern void DrawHorizontalLine();
extern void HandleByteStream(const char* byteStream);

// game_text
extern char gTextLowerCaseAlphabet[];

extern char gDescriptionTeenagerRoom[];
extern char gDescriptionDarkTunel[];
extern char gDescriptionMarketPlace[];
extern char gDescriptionDarkAlley[];



/*
;
; Data generator for the high scores
;
; Each entry occupies 19 bytes:
;  2 bytes for the score (+32768)
;  1 byte for the game ending condition
; 16 bytes for the name (padded with spaces)
;-------------------------------------------
; 19 bytes per entry * 24 entries = 456 bytes total
;
#define ENTRY(type,score,name) .word (score+32768) : .byt type : .asc name
*/
#define SCORE_COUNT  24

enum SCORE_CONDITION
{
    e_SCORE_UNNITIALIZED    = 0,
    e_SCORE_SOLVED_THE_CASE = 1,
    e_SCORE_MAIMED_BY_DOG   = 2,
    e_SCORE_SHOT_BY_THUG    = 3,
    e_SCORE_FELL_INTO_PIT   = 4,
    e_SCORE_TRIPPED_ALARM   = 5,
    e_SCORE_RAN_OUT_OF_TIME = 6,
    e_SCORE_BLOWN_INTO_BITS = 7,
    e_SCORE_SIMPLY_VANISHED = 8,
    e_SCORE_GAVE_UP         = 9
};

typedef struct 
{
    int             score;          // The score can actually be negative if the player is doing stupid things on purpose
    unsigned char   condition;      // The reason why the game ended (victory, abandon, death, ...)
    unsigned char   name[16];       // The name of the character  
} score_entry;

extern score_entry gHighScores[SCORE_COUNT];
extern const char* gScoreConditionsArray[];
