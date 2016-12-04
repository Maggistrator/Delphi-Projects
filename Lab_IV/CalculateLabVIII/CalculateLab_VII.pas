program CalculateLab_VI;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var i :Integer;
	  arr: Array[1..15] of Integer;
begin
randomize;
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
for i:= 1 to 15 do
	begin
		arr[i]:=Random(10);
		write(arr[i],' ');
		if((i mod 5) = 0) then writeln;
	end;
writeln('Значения нового массива: ');
for i:= 1 to 15 do
	begin
		arr[i]:=arr[i]-i;
		write(arr[i],' ');
		if((i mod 5) = 0) then writeln;
	end;
Readln;
end.

