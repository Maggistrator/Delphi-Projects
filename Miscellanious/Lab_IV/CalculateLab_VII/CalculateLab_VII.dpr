program CalculateLab_VII;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var i, min, max, idx_min, idx_max:Integer;
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
writeln;
idx_max := 1;
idx_min := 1;
min := arr[1];
max := arr[1];
for i:= 1 to 15 do
	begin
		if(arr[i] > 0) then
		begin
		if(arr[i] < min) then 
			begin
				min:= arr[i];
				idx_min:=i;
			end;
		if(arr[i] > max) then 
			begin
				max:= arr[i];
				idx_max:=i;
			end;	
		end;	end;
writeln('Минимальный элемент: ', min, ' с индексом ',idx_min);	
writeln('Максимальный элемент: ', max, ' с индексом ',idx_max);	
Readln;
end.

