# Tempus - Time Tracking Script

### How to install:
* Clone this repository into `~/tempus` by running `git clone https://github.com/victorberland/tempus.git`
* Add `alias tempus='~/tempus/tempus'` to `.bash_profile`

All info generated from the timer will be saved in `~/tempus/PROJECTNAME/horologium.txt` with the date, start time, stop time and duration.

### Usage:
* Run `tempus start PROJECTNAME` to start the timer. If a project with this name does not exist already, a new one will be created.
* Run `tempus stop PROJECTNAME` to stop the timer. The timer log will be in `~/Tempus/PROJECTNAME/horologium.txt`

Subsitute `PROJECTNAME` with the name of your project. Use only characters allowed in folder names (no spaces).
