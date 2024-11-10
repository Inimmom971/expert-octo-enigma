@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"
net user runneradmin Mdrazamiah123@
net config server /srvcomment:"Windows Server By runneradmin"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F
net user runneradmin Mdrazamiah123@ /add >nul
net localgroup administrators runneradmin /add >nul
net user installer /delete
ICACLS C:\Windows\Temp /grant runneradmin:F >nul
ICACLS C:\Windows\installer /grant runneradmin:F >nul
diskperf -Y >nul 
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
python -c "import pyautogui as pag; pag.click(876, 21, duration=2)"
python -c "import pyautogui as pag; pag.click(906, 73, duration=2)"



