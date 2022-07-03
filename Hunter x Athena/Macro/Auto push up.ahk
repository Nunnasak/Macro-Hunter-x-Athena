#SingleInstance, force
#NoEnv
#MaxThreadsPerHotkey, 2
SetMouseDelay, -1
SetCapsLockState, Off
CoordMode, Pixel, Window
CoordMode, Mouse, Window

percentcheck = false
detect = false

IfNotExist, %A_ScriptDir%\bin
{
	msgbox,, file missing,Look like you didn't extract file,3
	ExitApp 
}

if WinExist("Roblox") {
	WinActivate
    CenterWindow("ahk_exe RobloxPlayerBeta.exe")
} else {
	tooltip, Roblox not found
	settimer, removetooltip, -3000
	Sleep 3000
	ExitApp
}
CenterWindow(WinTitle) {	
	WinGetPos,,, Width, Height, %WinTitle%
	WinMove, %WinTitle%,,,, 800, 599
}
removetooltip() {
    tooltip
}

$f1::
	loop,
		{
			ImageSearch, x, y, 68, 76, 215, 100, *50 %A_ScriptDir%\bin\full.png
			if Errorlevel = 0
			{
				send j
				sleep 2000
			}
			ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\B.png
			if Errorlevel = 0
			{				
				Send b
				sleep 1250
			}			
			ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\C.png
			if Errorlevel = 0
			{				
				Send c
				sleep 1250
			}
			ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\E.png
			if Errorlevel = 0
			{				
				Send e
				sleep 1250
			}			
			ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\L.png
			if Errorlevel = 0
			{				
				Send l
				sleep 1250
			}
			ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\N.png
			if Errorlevel = 0
			{				
				Send n
				sleep 1250
			}
			ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\Q.png
			if Errorlevel = 0
			{				
				Send q
				sleep 1250
			}
			ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\R.png
			if Errorlevel = 0
			{				
				Send r
				sleep 1250
			}
			ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\S.png
			if Errorlevel = 0
			{				
				Send s
				sleep 1250
			}
			ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\T.png
			if Errorlevel = 0
			{				
				Send t
				sleep 1250
			}
			ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\V.png
			if Errorlevel = 0
			{				
				Send v
				sleep 1250
			}
			ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\W.png
			if Errorlevel = 0
			{				
				Send w
				sleep 1250
			}
			ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\X.png
			if Errorlevel = 0
			{				
				Send x
				sleep 1250
			}
		}	
Insert::reload
Delete::ExitApp 