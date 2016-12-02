program CalculateLab_VI;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var i, sum, count:Integer;
	  arr: Array[1..15] of Integer;
begin
randomize;
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
count := 0;
sum := 0;
for i:= 1 to 15 do
	begin
		arr[i]:=Random(10);
		write(arr[i],' ');
		if((i mod 5) = 0) then writeln;
	end;
writeln('Нечётные: ');
for i:= 1 to 15 do
	begin
		if((arr[i] mod 2) <> 0)then
		begin
		write(i, ', ');
		end;
	end;
Readln;
end.

