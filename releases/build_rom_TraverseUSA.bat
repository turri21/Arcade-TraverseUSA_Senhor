@echo off

set    zip=travrusa.zip
set ifiles=zr1-0.m3+zr1-5.l3+zr1-6a.k3+zr1-7.j3+mr10.1a+mr10.1a+zippyrac.001+mr8.3c+mr9.3a+zr1-8.n3+zr1-9.l3+zr1-10.k3+mmi6349.ij+tbp24s10.3+tbp18s.2
set  ofile=a.travrusa.rom

rem =====================================
setlocal ENABLEDELAYEDEXPANSION

set pwd=%~dp0
echo.
echo.

if EXIST %zip% (

	!pwd!7za x -otmp %zip%
	if !ERRORLEVEL! EQU 0 ( 
		cd tmp

		copy /b/y %ifiles% !pwd!%ofile%
		if !ERRORLEVEL! EQU 0 ( 
			echo.
			echo ** done **
			echo.
			echo Copy "%ofile%" into root of SD card
		)
		cd !pwd!
		rmdir /s /q tmp
	)

) else (

	echo Error: Cannot find "%zip%" file
	echo.
	echo Put "%zip%", "7za.exe" and "%~nx0" into the same directory
)

echo.
echo.
pause
