#Warn
#NoTrayIcon     ;����ʾ����ͼ��

;�Թ̶������������ӳ���
SetTimer, UpdateOSD1,10
gosub, UpdateOSD1
;~ return 

UpdateOSD1:
MouseGetPos, MouseX, MouseY    ;��ȡ��ǰ���λ�õ�����
PixelGetColor, color, %MouseX%, %MouseY%, RGB    ;��ȡǰһ����õ����괦����ɫ��
WinGetActiveTitle, Title    ;��ȡ��ǰ����ڵĵı���
winget,pid,PID,%title%    ;��ȡ��ǰ����ڵĵ�PID������ID��
winget,ahk_exe,ProcessName,%title%   ;��ȡ��ǰ����ڵĽ�����
winget,ahk_path,ProcessPath,%title%   ;��ȡ��ǰ����ڵĽ���·��
SysGet, VirtualWidth, 78
SysGet, VirtualHeight, 79
WinGetPos,,,width,height,%title%
if(title != "")
{
	ToolTip,Title`t`t%Title%`ncoordinate`tX%MouseX%   Y%MouseY%`nRGB`t`t%color%`nPID`t`t%pid%`nprocess`t`t%ahk_exe%`npath`t`t%ahk_path%`nwidth��height`t%width%x%height%    ;��tooptip�ķ�ʽ��ʾ���ϻ�ȡ������
return
}
else
{
	ToolTip,coordinate`t`tX%MouseX%   Y%MouseY%`nmonitor resolution`t%VirtualWidth%*%VirtualHeight%    ;titleΪ��ֻ��ʾ����
	return
}
;ֹͣ
F9::
SetTimer, UpdateOSD1,off
ToolTip
return
;��ʼ
F10::
SetTimer, UpdateOSD1,On
return

Esc::
ExitApp