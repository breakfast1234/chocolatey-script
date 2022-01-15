![Chocolatey Image](chocolatey-media.png)

---

# Chocolatey Script

## Windows Package Manager

A simple script using the chocolatey package manager to install/update software I use on my development workstation

# Directions

    1.  Run the setup script once
    2.  Review "baseline.bat" as a guide for creating your own package manager "BAT" file
    3.  Find your own packages

Initial Setup: https://chocolatey.org/install

Find: https://chocolatey.org/packages

# Setup Script

Run powershell as an administrator and run the following once:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

# Usage Example

"baseline.cmd" installs or updates:

```bat
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
```

Run in bash:

```bash
$ cd chocolatey-script
$ chmod +x baseline.cmd
$ ./baseline.cmd
```

After Baseline Run Once in PowerShell (Installs VSCode Extentions):

```powershell
$ cd chocolatey-script\VSCode
$ .\vscodeExtentions.ps1
```

# More Information

https://www.penrodtech.org/post/chocolatey-package-manager

https://chocolatey.org/
