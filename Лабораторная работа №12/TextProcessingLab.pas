program TextProcessingLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

<<<<<<< HEAD
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
=======
Var i, sum, count:Integer;
	text: String;
//	word: Array[1..45] of String;
begin
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
Readln('������� �����: ', text);
text := StringReplace(text, ' child ', ' children ', [rfReplaceAll, rfIgnoreCase]);
Writeln('��� ��������� ����� "child" �������� �� "children"');
Writeln('������: ', text);
>>>>>>> origin/master
Readln;
end. 

//Child like child, nothing special