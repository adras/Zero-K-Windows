echo off

echo installing WSL
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart 
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

echo Installing Windows Subsystem for Linux (WSL)
echo Using Debian
wsl.exe --install Debian --web-download -n