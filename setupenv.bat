echo off

echo Installing Windows Subsystem for Linux (WSL)
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart 
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

echo Installing Debian
wsl --install Debian --web-download

REM On windows it might happen that git uses CRLF line-breaks. To make sure that debiansetup.sh has linux linebreaks
REM We're installing dos2unix and run it
wsl -d Debian sudo apt-get update 
wsl -d Debian sudo apt-get install dos2unix
wsl -d Debian dos2unix ./debiansetup.sh
wsl -d Debian chmod 755 ./debiansetup.sh

