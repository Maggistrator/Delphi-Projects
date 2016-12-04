program CalculateLab_III;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var i, n:Integer;
	y, current:Real;
begin
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
y := 1;
n := 2;
current := 0;
while(n<>12) do
	begin
		current := sqr(n);
		y := y + 1/current;
		n := n + 1;
		writeln('y = ', y:2:2);
	end;
Readln;
end.

