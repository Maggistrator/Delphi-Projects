program Lab6_1;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var i, n:Integer;
	sourse: Array[1..100] of Integer;
	output: Array[1..100] of Integer;

begin
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
writeln('Введите размер массива: ');readln(n);
writeln('Исходный массив: ');
for i:= 1 to n do
	begin
		sourse[i]:=Random(20)-10;
		write(sourse[i],' ');
		if(i mod 5 = 0) then writeln;	
	end;
writeln('Преобразованный массив: ');
for i:=1 to n do
	begin
	sourse[i] := sourse[i] + i;
	write(sourse[i], ' ');
	if(i mod 5 = 0) then writeln;
	end;
Readln;
end.

