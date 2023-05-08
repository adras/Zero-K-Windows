echo off
set DISTRIBUTION=Ubuntu
echo Installing Windows Subsystem for Linux (WSL)
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart 
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

echo Installing %DISTRIBUTION%
wsl --install %DISTRIBUTION% --web-download

REM On windows it might happen that git uses CRLF line-breaks. To make sure that debiansetup.sh has linux linebreaks
REM We're installing dos2unix and run it
wsl -d %DISTRIBUTION% sudo apt-get update 
wsl -d %DISTRIBUTION% sudo apt-get install dos2unix
wsl -d %DISTRIBUTION% dos2unix ./linuxsetup.sh
wsl -d %DISTRIBUTION% chmod 755 ./linuxsetup.sh

