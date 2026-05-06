@echo off

cd /d "%~dp0"
git add readme.md
echo added readme
git add index.html
echo added index
git add OldestIndex.html
echo added oldest index
git add Pusher.cmd
echo added pusher
git commit -m "%random%"
echo committed changes
git push origin master
echo pushed changeses
echo done wait 30 sec
timeout /t 30
echo DONE