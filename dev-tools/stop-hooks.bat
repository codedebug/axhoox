@echo off

goto :START

This is for development and testing.
This script deactivates post-checkout hook script.

:REMOVE
IF EXIST "%~dpf1" del "%~dpf1"
echo Hook removed from %~dpf1

goto :EOF


:START
rem Main action

call :REMOVE %~p0..\.git\hooks\post-checkout
call :REMOVE %~p0..\.git\hooks\post-merge

IF errorlevel 1 (
	echo Some tasks went wrong. Runtime errors occured.
)
