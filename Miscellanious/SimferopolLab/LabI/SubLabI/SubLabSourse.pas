program SubLabI;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var first, second:Real;

begin
	SetConsoleCP(1251);
	SetConsoleOutPutCP(1251);
	write('>>������� ������ �����! '); readln(first);
	write('>>������� ������ �����! '); readln(second);
	if(first=second) writeln('����� ���������, ���������� ��� ���!');
	else
		begin
			if(first>second) then
				begin
					writeln(first:2:0);
					writeln(second:2:0);
				end
			else
				begin
					writeln(second:2:0);
					writeln(first:2:0);
				end
		end;
	Readln;
end.

