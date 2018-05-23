# Tempus - Time Tracking Script

### How to install:
* Make a folder called `Tempus` in your home directory. `~/Tempus`.
* Copy `start.sh` and `stop.sh` to `~/Tempus`.

If you're on a Mac:
* Copy `start.scpt` and `stop.scpt` to `~/Library/Scripts/`
* Open `Script Editor.app in ~/Applications/Utilities`
* Open the `Preferences` for `Script Editor` and select the option to show Script Editor in the menu bar.
* You can now click on the newly created button in the menu bar and click on `Start` to start the timer and `Stop` to stop the timer.

For all other GNU-based systems (use Win-Bash or any equivalent of your choice if you're on Windows), you can just run the `~/Tempus/start.sh` and `~/Tempus/stop.sh` scripts to start and stop the timer. To make things easier, you can create a shortcut on your desktop to each of the scripts.

All info generated from the timer will be saved in `~/Tempus/horologium.txt` with the date, start time, stop time and duration.
