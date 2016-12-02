program CalculateLab_IV;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var i, sum, count:Integer;
	  arr: Array[1..16] of Integer;
begin
randomize;
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
count := 0;
sum := 0;
for i:= 1 to 16 do
	begin
		arr[i]:=Random(15)-5;
		write(arr[i],' ');
		if((i mod 4) = 0) then writeln;
	end;
writeln;
for i:= 1 to 16 do
	begin
		if((i mod 4) = 0)then
		begin
			count := count+1;
			sum := sum + arr[i]; 
		end;
	end;
writeln('Колличество: ', count);	
writeln('Сумма элементов: ', sum);	
Readln;
end.

