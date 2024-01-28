/// @description Insert description here
// You can write your code in this editor

//DEFINE MACROS
#macro SET_LENGTH 150 //length of one set in seconds
#macro FRAMES_SEC 60 //frames in one second
#macro INTRO_LENGTH 90 //frames in the intro sequence

//DEFINE ENUMS

//DEFINE GLOBAL VARIABLES

//stores whether debug checking is on
global.debug = false;

//tracks current time in ticks
global.time_tick = 0;
//current time in second
global.time_sec = 0;

//game state, 0 is intro, 1 and 2 are sets, 3 is victory, 4 is defeat
global.game_state = 0;

//laugh meter percent 0-100, starts at 50
global.laughter = 50;

//tracks number of tables generated for tracking id
global.num_tables = 0;

//variables for intro curtain
introdraw_tick = 0;
introdraw_offset = 0;

//variables for endgame curtain
enddraw_tick = 0;
enddraw_offset = 0;

depth = -1000;


