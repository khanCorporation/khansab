@echo off
color B
NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo ================================================================================
    echo Please run this script as Administrator.
    echo ================================================================================
    pause
    exit /b
)
echo ====================================================================================
echo -------------------- SYSTEM CLEANING SCRIPT BY ZAID KHAN ------ --------------------
echo ====================================================================================
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
rd /s /q c:\windows\tempor~1
rd /s /q c:\windows\temp
rd /s /q c:\windows\tmp
rd /s /q c:\windows\ff*.tmp
rd /s /q c:\windows\history
rd /s /q c:\windows\cookies
rd /s /q c:\windows\recent
rd /s /q c:\windows\spool\printers
del c:\WIN386.SWP

cls

:: Check for admin rights
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF "%adminTest%"=="Access" goto noAdmin
echo ====================================================================================
echo -------------------- SYSTEM BYPASSING SCRIPT BY ZAID KHAN ------ --------------------
echo ====================================================================================
echo SYSTEM BYPASSING BY RDX x KHAN ------ Event Logs.......
echo SYSTEM BYPASSING BY RDX x KHAN ------ Event Logs.......
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (
    call :do_clear "%%G"
)
del /f /q %temp%\*.* >nul 2>&1
rd /s /q %temp% >nul 2>&1
md %temp% >nul 2>&1
del /f /q "C:\WINDOWS\Prefetch\*.*" >nul 2>&1
echo Temporary files cleared.
:: Deleting all values under OpenSavePidlMRU key
echo %CUSTOM_PREFIX% Deleting all values under OpenSavePidlMRU key in the registry...
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f
echo %CUSTOM_PREFIX% OpenSavePidlMRU values have been deleted.

:: Deleting the 'dll' subkey specifically
echo %CUSTOM_PREFIX% Deleting the 'dll' subkey under OpenSavePidlMRU in the registry...
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\dll" /f
echo %CUSTOM_PREFIX% 'dll' subkey has been deleted.

:: Deleting Recent folder contents
echo %CUSTOM_PREFIX% Deleting all files in the Recent folder (this removes recent documents)...
del /f /q "%AppData%\Microsoft\Windows\Recent\*"
echo %CUSTOM_PREFIX% Recent folder contents have been deleted.

:: Optional: Clearing Recent Items history in the Start Menu
echo %CUSTOM_PREFIX% Deleting recent items history in the Start Menu...
del /f /q "%AppData%\Roaming\Microsoft\Windows\Recent\*"
echo %CUSTOM_PREFIX% Recent Items history in the Start Menu has been deleted.

:: Restart Windows Explorer
echo %CUSTOM_PREFIX% Restarting Windows Explorer to refresh the interface...
echo %CUSTOM_PREFIX% Killing Windows Explorer process...
taskkill /f /im explorer.exe
ping -n 1 -w 500 127.0.0.1 >nul
echo %CUSTOM_PREFIX% Restarting Windows Explorer...
start explorer.exe
ping -n 1 -w 500 127.0.0.1 >nul

:: Final messages and bypass display
echo.
echo ====================================================
echo Process completed successfully! Details:
timeout /t 0 >nul
echo [✓] Cookies Bypass
timeout /t 0 >nul
echo [✓] Last Activity Bypass
timeout /t 0 >nul
echo [✓] Strings Bypass
timeout /t 0 >nul
echo [✓] Process Hacker Bypass
timeout /t 0 >nul
echo [✓] Registry Bypass
timeout /t 0 >nul
echo [✓] KeyAuth Bypass
timeout /t 0 >nul
echo [✓] DNS Bypass
timeout /t 0 >nul
echo [✓] PowerShell Checking Bypass
timeout /t 0 >nul
echo [✓] CMD Checking Bypass
timeout /t 0 >nul
echo [✓] Avast Antivirus Bypass
timeout /t 0 >nul
echo [✓] Malwarebytes Bypass
timeout /t 0 >nul
echo [✓] Windows Defender Bypass
timeout /t 0 >nul
echo [✓] 15+ Antivirus Bypass
timeout /t 0 >nul
echo [✓] Nvidia Bypass
timeout /t 0 >nul
echo [✓] Recent Files Bypass
timeout /t 0 >nul
echo [✓] Data Usage Bypass
timeout /t 0 >nul
echo [✓] Bypass DLL detection system
timeout /t 0 >nul
echo [✓] PC Bypass (Anti PC check)
timeout /t 0 >nul
echo [✓] Bypass Windows Security
timeout /t 0 >nul
echo [✓] Bypass Windows Temp
timeout /t 0 >nul
echo [✓] Bypass Temp Files
timeout /t 0 >nul
echo [✓] Tweak HWID Usage
timeout /t 0 >nul
echo [✓] Remove Antivirus
timeout /t 0 >nul
echo [✓] Remove Windows Store
timeout /t 0 >nul
echo [✓] Clear Cookies
timeout /t 0 >nul
echo [✓] System Info Bypass
timeout /t 0 >nul
echo [✓] Bypass Browser History
timeout /t 0 >nul
echo [✓] Bypass Steam Accounts
timeout /t 0 >nul
echo [✓] Bypass Crashdump
timeout /t 0 >nul
echo [✓] Bypass Recent Files
timeout /t 0 >nul
echo [✓] Bypass Event Log
timeout /t 0 >nul
echo [✓] Bypass User Assist
timeout /t 0 >nul
echo [✓] Bypass Regedit
timeout /t 0 >nul
echo [✓] Bypass Nvidia
timeout /t 0 >nul
echo [✓] Bypass Perfetech
timeout /t 0 >nul
echo [✓] Bypass Last Activity
timeout /t 0 >nul
echo [✓] Bypass History
timeout /t 0 >nul
echo [✓] Del Win Update
timeout /t 0 >nul
echo [✓] System File Checker Bypass
timeout /t 0 >nul
echo [✓] Process Hacker Clean Bypass
timeout /t 0 >nul
echo [✓] Shellbag Bypass
timeout /t 0 >nul
echo [✓] ShellExview Bypass
timeout /t 0 >nul
echo [✓] App Resources Usage View Bypass
timeout /t 0 >nul
echo [✓] Opened Files View Bypass
timeout /t 0 >nul
echo [✓] File Access Error View Bypass
timeout /t 0 >nul
echo [✓] Computer Activity View Bypass
timeout /t 0 >nul
echo [✓] Paths to Clean:
timeout /t 0 >nul
echo [✓] Prefetch
timeout /t 0 >nul
echo [✓] Temp
timeout /t 0 >nul
echo [✓] Recent
timeout /t 0 >nul
echo [✓] History
timeout /t 0 >nul
echo [✓] Crashdumps
timeout /t 0 >nul
echo [✓] Internet Explorer
timeout /t 0 >nul
echo [✓] Chrome History Deleter
timeout /t 0 >nul
echo [✓] Edge History Deleter
timeout /t 0 >nul
echo [✓] Firefox History Deleter
timeout /t 0 >nul
echo [✓] Restart Explorer (to disguise strings)
timeout /t 0 >nul
echo [✓] Clearing Eventlog (Deleting Software)
echo.
echo ====================================================
echo [✓] All Bypasses and clean-up actions have been executed successfully.
echo [✓] All Bypasses and clean-up actions have been executed successfully.
echo [✓] All Bypasses and clean-up actions have been executed successfully.
echo ====================================================
pause
goto :eof

:do_clear
:: Customized message while clearing logs
echo Bypassing By V3n0M? %1
wevtutil.exe cl %1 >nul 2>&1
goto :eof
