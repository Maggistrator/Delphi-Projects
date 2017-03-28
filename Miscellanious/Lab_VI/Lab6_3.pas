program Lab6_1;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var i, n, max, idx, buf :Integer;
	sourse: Array[1..100] of Integer;

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
max := sourse[1];
idx := 1;
for i:= 1 to n do
	begin
		if(sourse[i] > max) then 
			begin 
				max := sourse[i];	
				idx := i;
			end;
	end;
writeln('Максимальное: ', max, ' с индексом ',idx);
buf := sourse[1];
sourse[1] := sourse[idx];
sourse[idx] := buf;
writeln('Преобразованный массив: ');
for i:=1 to n do
	begin
	write(sourse[i], ' ');
	if(i mod 5 = 0) then writeln;
	end;
Readln;
end.
