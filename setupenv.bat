echo off

echo Installing Windows Subsystem for Linux (WSL)
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart 
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

echo Installing Debian
wsl.exe --install Debian --web-download
wsl -e chmod 755 ./debiansetup.sh

