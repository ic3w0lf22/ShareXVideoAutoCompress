@ECHO OFF
:FIND
IF "%1"=="-y" GOTO FOUND
SHIFT
GOTO FIND
:FOUND
SHIFT
echo %1

ffmpeg %*
if exist "%temp%\uncompressed.mp4" (del "%temp%\uncompressed.mp4")

set file=%1

FOR %%i IN ("%file%") DO (
   set fd=%%~di
   set fp=%%~pi
   set fn=%%~ni
   set ext=%%~xi
)

move %1 "%temp%"
ren "%temp%\%fn%%ext% "uncompressed.mp4"
if exist "%temp%\uncompressed.mp4" (
    HandBrakeCLI --preset "Discord Nitro Large 3-6 Minutes 1080p30" -i "%temp%\uncompressed.mp4" -o %1 -f "av_mp4" -r 60
    del "%temp%\uncompressed.mp4"
)
@REM start "" /b cmd /c compress.bat %1
