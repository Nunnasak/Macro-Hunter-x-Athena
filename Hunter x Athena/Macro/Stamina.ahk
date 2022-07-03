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
		ImageSearch, x, y, 68, 76, 215, 100, *50 %A_ScriptDir%\bin\full.png
		if Errorlevel = 0
		{
			Send {Space Down}
			sleep 100
			Send {Space Up}
			Sleep 100
			Send {Space Down}
			sleep 100
			Send {Space Up}
			Sleep 100
			Sleep 5000
		}
	}
return

Insert::reload
Delete::ExitApp 