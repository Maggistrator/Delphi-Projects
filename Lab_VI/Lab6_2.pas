program Lab6_1;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var i, n, min :Integer;
	sourse: Array[1..100] of Integer;
	output: Array[1..100] of Integer;

begin
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
writeln('Введите размер массива: ');readln(n);
writeln('Исходный массив: ');
for i:= 1 to n do
	begin
		sourse[i] := Random(20)-10;
		write(sourse[i],' ');
		if(i mod 5 = 0) then writeln;	
	end;
writeln('Преобразованный массив: ');
min := sourse[1];
for i:= 1 to n do
	begin
		if(sourse[i] < min) then min := sourse[i];	
		end;
		writeln('Минимальное: ', min);
for i:=1 to n do
	begin
	output[i] := sourse[i] + min;
	write(output[i], ' ');
	if(i mod 5 = 0) then writeln;
	end;
Readln;
end.
