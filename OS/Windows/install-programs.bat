:: Uso de la herramienta winget para instalar y administrar aplicaciones
:: https://learn.microsoft.com/es-es/windows/package-manager/winget/
::
:: Execute in Admin PowerShell
::
:: Install winget
::
:: List all packages with available updates
:: winget list --upgrade-available
::
:: Update all installed apps
:: winget upgrade --all
::

@echo off
Echo Install Windows Programs

REM Powertoys
winget install Microsoft.Powertoys
if %ERRORLEVEL% EQU 0 Echo Powertoys installed successfully.

REM Terminal
winget install Microsoft.WindowsTerminal
if %ERRORLEVEL% EQU 0 Echo Terminal installed successfully.

REM Ferdium
winget install Ferdium.Ferdium
if %ERRORLEVEL% EQU 0 Echo Ferdium installed successfully.

REM Spark
winget install Readdle.Spark
if %ERRORLEVEL% EQU 0 Echo Spark installed successfully.

REM massCode
winget install antonreshetov.massCode
if %ERRORLEVEL% EQU 0 Echo massCode installed successfully.

REM Notion
winget install Notion.Notion
if %ERRORLEVEL% EQU 0 Echo Notion installed successfully.

REM 7zip
winget install 7zip.7zip
if %ERRORLEVEL% EQU 0 Echo 7zip installed successfully.

REM Tabby
winget install Eugeny.Tabby
if %ERRORLEVEL% EQU 0 Echo Tabby installed successfully.

REM ASIO4ALL
winget install MichaelTippach.ASIO4ALL
if %ERRORLEVEL% EQU 0 Echo ASIO4ALL installed successfully.

REM Ubuntu 22
winget install Canonical.Ubuntu.2204
if %ERRORLEVEL% EQU 0 Echo Ubuntu 22 installed successfully.

REM Discord
winget install Discord.Discord
if %ERRORLEVEL% EQU 0 Echo Discord installed successfully.

REM Dropbox
winget install Dropbox.Dropbox
if %ERRORLEVEL% EQU 0 Echo Dropbox installed successfully.

REM Git
winget install Git.Git
if %ERRORLEVEL% EQU 0 Echo Git installed successfully.

REM Google Chrome
winget install Google.Chrome
if %ERRORLEVEL% EQU 0 Echo Google Chrome installed successfully.

REM Google Chrome Dev
winget install Google.Chrome.Dev
if %ERRORLEVEL% EQU 0 Echo Google Chrome Dev installed successfully.

REM Greenshot
winget install Greenshot.Greenshot
if %ERRORLEVEL% EQU 0 Echo Greenshot installed successfully.

REM HeidiSQL
winget install HeidiSQL.HeidiSQL
if %ERRORLEVEL% EQU 0 Echo HeidiSQL installed successfully.

REM kalilinux
winget install kalilinux.kalilinux
if %ERRORLEVEL% EQU 0 Echo kalilinux installed successfully.

REM Logitech LogiBolt
winget install Logitech.LogiBolt
if %ERRORLEVEL% EQU 0 Echo Logitech LogiBolt installed successfully.

REM Logitech Options
winget install Logitech.Options
if %ERRORLEVEL% EQU 0 Echo Logitech Options installed successfully.

REM Microsoft Edge
winget install Microsoft.Edge
if %ERRORLEVEL% EQU 0 Echo Microsoft Edge installed successfully.

REM Microsoft Edge Dev
winget install Microsoft.Edge.Dev
if %ERRORLEVEL% EQU 0 Echo Microsoft Edge Dev installed successfully.

REM Firefox Developer
winget install Mozilla.Firefox.DeveloperEdition
if %ERRORLEVEL% EQU 0 Echo Firefox Developer installed successfully.

REM Firefox
winget install Mozilla.Firefox
if %ERRORLEVEL% EQU 0 Echo Firefox installed successfully.

REM OneDrive
winget install Microsoft.OneDrive
if %ERRORLEVEL% EQU 0 Echo OneDrive installed successfully.

REM Opera
winget install Opera.Opera
if %ERRORLEVEL% EQU 0 Echo Opera installed successfully.

REM Postman
winget install Postman.Postman
if %ERRORLEVEL% EQU 0 Echo Postman installed successfully.

REM OBS Studio
winget install XPFFH613W8V6LV
if %ERRORLEVEL% EQU 0 Echo OBS Studio installed successfully.

REM VLC
winget install VideoLAN.VLC
if %ERRORLEVEL% EQU 0 Echo VLC installed successfully.

REM Zoom
winget install Zoom.Zoom
if %ERRORLEVEL% EQU 0 Echo Zoom installed successfully.

REM Authy
winget install Twilio.Authy
if %ERRORLEVEL% EQU 0 Echo Authy installed successfully.

REM Local
winget install Flywheel.Local
if %ERRORLEVEL% EQU 0 Echo Local installed successfully.

REM LanguageTool
winget install LanguageTool.LanguageTool
if %ERRORLEVEL% EQU 0 Echo LanguageTool installed successfully.

REM Notion
winget install Notion.Notion
if %ERRORLEVEL% EQU 0 Echo Notion installed successfully.

REM GitKraken
winget install Axosoft.GitKraken
if %ERRORLEVEL% EQU 0 Echo GitKraken installed successfully.

REM DeepL
winget install DeepL.DeepL
if %ERRORLEVEL% EQU 0 Echo DeepL installed successfully.

REM Python.3.11
winget install Python.Python.3.11
if %ERRORLEVEL% EQU 0 Echo Python.3.11 installed successfully.

REM RescueTime
winget install RescueTime.DesktopApp
if %ERRORLEVEL% EQU 0 Echo RescueTime installed successfully.

REM LibreOffice
winget install TheDocumentFoundation.LibreOffice
if %ERRORLEVEL% EQU 0 Echo LibreOffice installed successfully.

REM Poedit
winget install VaclavSlavik.Poedit
if %ERRORLEVEL% EQU 0 Echo Poedit installed successfully.

REM Java Runtime Environment
winget install Oracle.JavaRuntimeEnvironment
if %ERRORLEVEL% EQU 0 Echo Java Runtime Environment installed successfully.

REM Logitech OptionsPlus
winget install Logitech.OptionsPlus
if %ERRORLEVEL% EQU 0 Echo Logitech OptionsPlus installed successfully.

REM Nvidia GeForceExperience
winget install Nvidia.GeForceExperience
if %ERRORLEVEL% EQU 0 Echo Nvidia GeForceExperience installed successfully.

REM Nvidia Broadcast
winget install Nvidia.Broadcast
if %ERRORLEVEL% EQU 0 Echo Nvidia Broadcast installed successfully.

REM Calibre
winget install calibre.calibre
if %ERRORLEVEL% EQU 0 Echo Calibre installed successfully.

REM pCloudDrive
winget install pCloudAG.pCloudDrive
if %ERRORLEVEL% EQU 0 Echo pCloudDrive installed successfully.


%ERRORLEVEL%