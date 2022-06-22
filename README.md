# ShareXVideoAutoCompress
Automatically compress videos recorded with ShareX using a simple batch script and HandbrakeCLI

### ShareX Tools Folder: Press Windows+R and paste this in: `%userprofile%\Documents\ShareX\Tools`

# Installation
- Download the [batch file](https://raw.githubusercontent.com/ic3w0lf22/ShareXVideoAutoCompress/main/process.bat) and place it into the `ShareX\Tools` folder
- Download [HandbrakeCLI](https://handbrake.fr/downloads2.php) and place the executable into the `ShareX\Tools` folder
- Right click ShareX tray icon, click `Task Settings`
- Capture -> Screen Recorder -> Screen Recording Options
- Replace FFmpeg path with `%MyDocuments%\ShareX\Tools\process.bat`

# ShareX screen recordings may not stop instantly as it waits for the video to be compressed
# May be very slow on low-end computers
# You can modify the [Handbrake Preset](https://handbrake.fr/docs/en/latest/technical/official-presets.html#:~:text=Discord%20Nitro%20Large%203%2D6%20Minutes%201080p30) to whichever preset you'd like to use by opening the `process.bat` file in notepad and editting line 25 where it says `--preset "Discord Nitro Large 3-6 Minutes 1080p30"`.
