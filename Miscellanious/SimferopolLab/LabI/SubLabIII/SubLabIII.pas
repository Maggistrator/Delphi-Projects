program SubLabIII;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var X, result:Real;

begin
	SetConsoleCP(1251);
	SetConsoleOutPutCP(1251);
	write('>>������� ����� X: '); readln(X);
	if(X<0) then result := 25 - X
	else result := sqrt(X);
	writeln('�����: ', result:2:2);
	Readln;
end.
