full_command_line := DllCall("GetCommandLine", "str")
if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
    try ; leads to having the script re-launching itself as administrator
    {
        if A_IsCompiled
            Run *RunAs "%A_ScriptFullPath%" /restart
        else
            Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
    }
    ExitApp
}

XButton2::
{
#IfWinActive ahk_exe eldenring.exe
{

		Send {q down}
		Sleep 30
		Send {3 down}
		Sleep 30
		Send {3 up}
		Sleep 30
		Send {q up}
	
}
}
return

XButton1::
{
		Send {q down}
		Sleep 30
		Send {1 down}
		Sleep 30
		Send {1 up}
		Sleep 30
		Send {q up}
}
return

z::
{

		Send {w down}
		Sleep 10
		Send {h down}
		Sleep 500
		Send {q down}
		Sleep 10
		Send {3 down}
		Sleep 10
		Send {3 up}
		Sleep 10
		Send {q up}
		sleep 10
		/*
		Send {w up}
		Sleep 10
		Send {h up}
		Sleep 10
		*/
		Send {ESC down}
		Sleep 10
		Send {ESC UP}
		Sleep 10
		Mousemove 110,1100
		Click down
		Sleep 10
		Click up
		Mousemove 1460,210
		Sleep 10
		Send {e down}
		Sleep 10
		Send {e UP}
		Sleep 10
		Send {Left down}
		Sleep 10
		Send {Left up}

		Sleep 10
		Send {e down}
		Sleep 10
		Send {e UP}

		Sleep 10
		Send {w up}
		Sleep 10
		Send {h up}
		Sleep 10
}
return

Lshift::
{
		Send {ESC down}
		Sleep 10
		Send {ESC UP}
		Sleep 10
		Mousemove 110,1100
		Click down
		Sleep 10
		Click up
		Mousemove 1460,210
		Sleep 10
		Send {e down}
		Sleep 10
		Send {e UP}
		Sleep 10
		Send {Left down}
		Sleep 10
		Send {Left up}
		Sleep 10
		Send {e down}
		Sleep 10
		Send {e UP}

}
return