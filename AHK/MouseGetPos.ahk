#InstallMouseHook

CustomColor = FFFFF ; ����Ϊ���� RGB ��ɫ (������ᱻ����Ϊ͸��).
Gui +LastFound +AlwaysOnTop -Caption +ToolWindow  ; +ToolWindow ������ʾ��������ť�� alt-tab �˵���.
Gui, Color, %CustomColor%
Gui, Font, s32  ; ���ô����� (32 ��).
Gui, Add, Text, vMyText cLime, XXXXX YYYYY  ; XX & YY �����Զ��������ڴ�С.
Gui, add, edit,vMyedit1
Gui, add, edit,vMyedit2
; �ô���ɫ����������͸�������ı���ʾΪ��͸�� (150):
WinSet, TransColor, %CustomColor% 150
SetTimer, UpdateOSD, 200
Gosub, UpdateOSD  ; �������е�һ�˸��¶����ȴ���ʱ��.
Gui, Show,NoActivate  ; NoActivate �õ�ǰ����ڼ������ֻ״̬.
return

UpdateOSD:
MouseGetPos, MouseX, MouseY
GuiControl,, MyText, X%MouseX%, Y%MouseY%
ToolTip,X%MouseX%   Y%MouseY%
return

GuiContextMenu:
GuiControl,, Myedit1, %MouseX%
GuiControl,, Myedit2, %Mousey%
return

