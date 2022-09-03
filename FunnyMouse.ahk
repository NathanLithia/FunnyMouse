#MaxThreadsPerHotkey 2
CoordMode, mouse, screen
SysGet, MonitorCount, MonitorCount
SysGet, MonitorPrimary, MonitorPrimary
SysGet, MonitorName, MonitorName, %A_Index%
SysGet, Monitor, Monitor, %A_Index%
SysGet, MonitorWorkArea, MonitorWorkArea, %A_Index%
MonX = %MonitorRight%
MonY = %MonitorBottom%
TrayTip , FunnyMouse, Press F6 to enable FunnyMouse.
F6::
    toggle := !toggle
    loop
    {
        if not toggle
        {
            ToolTip
            break
        }
        else
        {
            Random, XPos, 0, MonX
            Random, YPos, 0, MonY
            MouseMove, %XPos%, %YPos%, 50
            ToolTip , F6 To Toggle, %XPos%//2, %YPos%//2
        }
    }
return