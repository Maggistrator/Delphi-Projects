program TextProcessingLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

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
Readln;
end. 

