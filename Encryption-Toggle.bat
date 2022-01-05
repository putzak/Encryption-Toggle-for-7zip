rem Encryption toggle
rem By Putzak

@echo off
echo ###############################
echo ##ENCRYPTION TOOL STARTING...##
echo ###############################

if not exist "%userprofile%\Documents\Backup\Backup.7z" (
    7z a -mx0 -mhe -pPASSWORD "%userprofile%\Documents\Backup\Backup.7z" *.jpg *.txt
    del *.jpg *.txt
) else (
    7z x "%userprofile%\Documents\Backup\Backup.7z"
    del "%userprofile%\Documents\Backup\Backup.7z"
)