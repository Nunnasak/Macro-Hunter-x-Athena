#SingleInstance, force
#NoEnv
SetCapsLockState, Off
SetBatchLines, -1
SetMouseDelay, -1
CoordMode, Pixel, Window
CoordMode, Mouse, Window

Gui, Add, Tab ,, Nen Opions

; Nen 
Gui, Tab, 1
Gui, Add, Text,, Which Nen Tecniques *Required
Gui, Add, DropDownList, vNenChoice, Aura|Ten|Ren|Zetsu|Ko|In|Gyo

Gui, Tab  ; i.e. subsequently-added controls will not belong to the tab control.
Gui, Add, Button, +default, Finished
Gui, Show, w300 h150 ,Nen
Return

GuiEscape:
ButtonFinished:
    Gui, Submit,
	NenChoice:=NenChoice
	if (NenChoice = "" )
	{
		MsgBox,,, Macro, you have uncompleted info.
        ExitApp
	}
	goto,StartNen

StartNen:
ToolTip
if WinExist("Ahk_exe RobloxPlayerBeta.exe")
{
    WinActivate
    WinMove, Ahk_exe RobloxPlayerBeta.exe,,,, 800, 599 
}
else
{
    MsgBox,,Macro,Roblox not active,3
    ExitApp
}
$f1::
macro_on := !macro_on
if (macro_on)
{
		If NenChoice = Aura
			loop,
			{
				ImageSearch, x, y, 55, 86, 205, 110, *50 %A_WorkingDir%/bin/Nen.png
				if Errorlevel = 0
				{
					Send n
					sleep 3000
				}
			}
		If NenChoice = Ten
			loop,
			{
				ImageSearch, x, y, 55, 86, 205, 110, *50 %A_WorkingDir%/bin/Nen.png
				if Errorlevel = 0
				{
					Send b
					sleep 3000
				}
			}
		If NenChoice = Ren
			loop,
			{
				ImageSearch, x, y, 55, 86, 205, 110, *50 %A_WorkingDir%/bin/Nen.png
				if Errorlevel = 0
				{
					Send v
					sleep 3000
				}
			}
		If NenChoice = Zetsu
			loop,
			{
				ImageSearch, x, y, 55, 86, 205, 110, *50 %A_WorkingDir%/bin/Nen.png
				if Errorlevel = 0
				{
					Send c
					sleep 3000
				}
			}
		If NenChoice = Ko
			loop,
			{
				ImageSearch, x, y, 55, 86, 205, 110, *50 %A_WorkingDir%/bin/Nen.png
				if Errorlevel = 0
				{
					Send x
					sleep 3000
				}
			}
		If NenChoice = In
			loop,
			{
				ImageSearch, x, y, 55, 86, 205, 110, *50 %A_WorkingDir%/bin/Nen.png
				if Errorlevel = 0
				{
					Send z
					sleep 3000
				}
			}
		If NenChoice = Gyo
			loop,
				{
				ImageSearch, x, y, 55, 86, 205, 110, *50 %A_WorkingDir%/bin/Nen.png
				if Errorlevel = 0
				{
					Send g
					sleep 3000
				}
			}
}
return