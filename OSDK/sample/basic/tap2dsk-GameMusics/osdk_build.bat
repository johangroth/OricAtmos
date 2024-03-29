@ECHO OFF


::
:: Initial check.
:: Verify if the SDK is correctly configurated
::
IF "%OSDK%"=="" GOTO ErCfg


::
:: Set the build paremeters
::
CALL osdk_config.bat


::
:: Launch the compilation of files
::
CALL %OSDK%\bin\make.bat %OSDKFILE%

::
:: Assemble the music player
::
ECHO Assembling music player
%osdk%\bin\xa mymplayer.s -o build\mymplayer.o
%OSDK%\bin\header -h1 -a0 build\mymplayer.o build\mymplayer.tap $6500


::
:: Convert musics
:: ym1.mym -> 8699 bytes
:: ym2.mym -> 7293 bytes
:: ym3.mym -> 7956 bytes
::
:: HIRES last usable memory area is $9800 / 38912
:: - 8657 -> $762f / 30255
:: Round to -> $7600 / 30208 this gives us $2200 / 8704 bytes for the music
::
:: So we make each music load in $7600
::
:: The depacking buffer for the music requires 256 bytes per register, so 256*14 bytes = $e00 / 3584 bytes
:: If we place the buffer just before the music file, it will start at the location $7600-$e00 = $6800 / 26624
::
:: And just before that we put the music player binary file, which will start by two JMP:
:: - (+0) JMP StartMusic
:: - (+3) JMP StopMusic
::
:: The music player itself is less than 512 bytes without counting the IRQ installation and what nots so could start in $6600, say $6500 for security
::
echo %osdk%

%OSDK%\bin\ym2mym -t0 data\BubbleBobble.ym data\BubbleBobble.mym 
%OSDK%\bin\header -h1 -a0 data\BubbleBobble.mym build\BubbleBobble.tap $7600

%OSDK%\bin\ym2mym -t0 data\Giana-Title.ym data\Giana-Title.mym 
%OSDK%\bin\header -h1 -a0 data\Giana-Title.mym build\Giana-Title.tap $7600

%OSDK%\bin\ym2mym -t0 data\RainbowIsland.ym data\RainbowIsland.mym 
%OSDK%\bin\header -h1 -a0 data\RainbowIsland.mym build\RainbowIsland.tap $7600

%OSDK%\bin\ym2mym -t0 "data\Pacmania 1.lha" data\PacMania-1.mym 
%OSDK%\bin\header -h1 -a0 data\PacMania-1.mym build\PacMania-1.tap $7600

%OSDK%\bin\ym2mym -t0 "data\R-Type  2 - level 1.lha" data\Rtype-1.mym 
%OSDK%\bin\header -h1 -a0 data\Rtype-1.mym build\Rtype-1.tap $7600



::
:: Rename files so they have friendly names on the disk
::
%OSDK%\bin\taptap ren build\%OSDKNAME%.tap "Test" 0
%OSDK%\bin\taptap ren build\mymplayer.tap "mymplayer" 0
%OSDK%\bin\taptap ren build\BubbleBobble.tap "Music1" 0
%OSDK%\bin\taptap ren build\Giana-Title.tap "Music2" 0
%OSDK%\bin\taptap ren build\RainbowIsland.tap "Music3" 0
%OSDK%\bin\taptap ren build\PacMania-1.tap "Music4" 0
%OSDK%\bin\taptap ren build\Rtype-1.tap "Music5" 0



pause

ECHO Building DSK file
%OSDK%\bin\tap2dsk -iCLS:TEST build\%OSDKNAME%.TAP build\mymplayer.tap build\BubbleBobble.tap build\Giana-Title.tap build\RainbowIsland.tap build\PacMania-1.tap build\Rtype-1.tap build\%OSDKNAME%.dsk
%OSDK%\bin\old2mfm build\%OSDKNAME%.dsk


GOTO End


::
:: Outputs an error message
::
:ErCfg
ECHO == ERROR ==
ECHO The Oric SDK was not configured properly
ECHO You should have a OSDK environment variable setted to the location of the SDK
IF "%OSDKBRIEF%"=="" PAUSE
GOTO End


:End
pause