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

f1::
macro_on := !macro_on
if (macro_on)
	loop,
		{
			ImageSearch, x, y, 68, 76, 215, 100, *50 %A_ScriptDir%\bin\full.png
			if Errorlevel = 0
			{
				Send {w down}
				Sleep 200
				Send {w up}
				Sleep 200
				Send {w down}
				Sleep 200
				Send {Lshift down}
				Sleep 200
				Send {w up}
				Sleep 10
			}
			else
			{
				ImageSearch, x, y, 50, 80, 215, 100, *50 %A_ScriptDir%\bin\out.png
				if Errorlevel = 0
				{
					Send {Lshift up}
					Sleep 80
				}
			}
		}
return

Insert::reload
Delete::ExitApp 