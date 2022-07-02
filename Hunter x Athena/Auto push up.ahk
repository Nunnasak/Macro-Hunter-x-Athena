#SingleInstance, force
#NoEnv
#MaxThreadsPerHotkey, 2
SetMouseDelay, -1
SetCapsLockState, Off
CoordMode, Pixel, Window
CoordMode, Mouse, Window

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
				ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\B.png
				if Errorlevel = 0
				{				
					Send b
				}			
				ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\C.png
				if Errorlevel = 0
				{				
					Send c
				}
				ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\E.png
				if Errorlevel = 0
				{				
					Send e
				}			
				ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\L.png
				if Errorlevel = 0
				{				
					Send l
				}
				ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\N.png
				if Errorlevel = 0
				{				
					Send n
				}
				ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\Q.png
				if Errorlevel = 0
				{				
					Send q
				}
				ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\R.png
				if Errorlevel = 0
				{				
					Send r
				}
				ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\S.png
				if Errorlevel = 0
				{				
					Send s
				}
				ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\T.png
				if Errorlevel = 0
				{				
					Send t
				}
				ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\V.png
				if Errorlevel = 0
				{				
					Send v
				}
				ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\W.png
				if Errorlevel = 0
				{				
					Send w
				}
				ImageSearch, x, y, 200, 200, 500, 500, *50 %A_ScriptDir%\bin\X.png
				if Errorlevel = 0
				{				
					Send x
				}
			}
Return

Insert::reload
Delete::ExitApp