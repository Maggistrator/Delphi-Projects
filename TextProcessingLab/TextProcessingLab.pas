program TextProcessingLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var text: String;
begin
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
writeln('>>TextProcessingLab ����� ������');
writeln('������� ������: '); readln(text);
if(length(text)=0) then writeln('������ �����')
else
	begin
		text := StringReplace(text, 'child', 'children', [rfReplaceAll, rfIgnoreCase]);
		writeln('>>��� ��������� ����� child �������� �� children');
		writeln('������: ',text); 	
	end;
Readln;
end. 

//Child like child, nothing special