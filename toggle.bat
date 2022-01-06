@echo off
rem	Encryption toggle
rem	By putzak
rem	https://github.com/putzak/Encryption-Toggle-for-7zip
rem	Credits to Igor Pavlov, creator of 7zip
rem	https://www.7-zip.org/

echo ###############################
echo ##ENCRYPTION TOOL STARTING...##
echo ###############################

for %%i in (echo %cd%) do set LOC="%%i
for %%i in (echo %cd%) do set LOC1=%%i
for /f "tokens=1,* delims=:" %%a in ('findstr /n "^" "variables.cfg" ^|findstr "^3:"') do set FILES=%%b
for /f "tokens=1,* delims=:" %%a in ('findstr /n "^" "variables.cfg" ^|findstr "^7:"') do set NAME=\%%b.7z"

if not exist %LOC%%NAME% (
	cd %MYFILES%
	copy exclusions.txt %LOC1%
	cd %LOC1%
    7z a  -xr@exclusions.txt -mx0 -y -mhe -p %LOC%%NAME% %FILES%
	rd /s /q %FILES%
	del exclusions.txt
	for %%i in (%FILES%) do if not "%%i"=="variables.cfg" if not "%%i"=="ET7.exe" del "%%i"
) else (
    7z x %LOC%%NAME%
    del %LOC%%NAME%
)