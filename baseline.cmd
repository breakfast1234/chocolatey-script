@ECHO OFF 
ECHO ============================
ECHO Chocolatey Updater
ECHO ============================
:: This batch file reveals OS, hardware, and networking configuration.
TITLE My System Info
ECHO Please wait... Checking system information.
:: Section 1: OS information.
ECHO ============================
ECHO OS INFO
ECHO ============================
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
:: Section 2: Hardware information.
ECHO ============================
ECHO HARDWARE INFO
ECHO ============================
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
:: Section 3: Networking information.
ECHO ============================
ECHO NETWORK INFO
ECHO ============================
ipconfig | findstr IPv4
ipconfig | findstr IPv6
ECHO ============================
ECHO UPDATES
ECHO ============================
:: Developer Updates
choco upgrade python -y
choco upgrade git -y
choco upgrade googlechrome -y
choco upgrade opera-gx -y
choco upgrade vscode -y
choco upgrade 7zip -y
choco upgrade sublimetext4 -y
:: Gaming
choco upgrade goggalaxy -y
choco upgrade epicgameslauncher -y
choco upgrade discord -y
choco upgrade steam-client -y
:: Video
choco upgrade obs-studio -y
choco upgrade vlc -y
:: Utilities
choco upgrade ccleaner -y
choco upgrade revo-uninstaller -y
choco upgrade choco-cleaner -y
choco upgrade bitwarden -y
choco upgrade malwarebytes -y
choco upgrade bitwarden -y
:: Chocolatey
choco upgrade chocolatey -y
