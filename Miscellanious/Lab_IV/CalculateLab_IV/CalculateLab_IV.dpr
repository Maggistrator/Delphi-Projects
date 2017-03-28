program CalculateLab_IV;

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
sum := 1;
for i:= 1 to 15 do
	begin
		arr[i]:=Random(15)-5;
		//Read(arr[i]);
		write(arr[i],' ');
		if((i mod 5) = 0) then writeln;
	end;
writeln;
writeln('>>Матрица создана, начинается анализ...');
for i:= 1 to 15 do
	begin
		if(arr[i]>0)then
		begin
			count := count+1;
			sum := sum * arr[i]; 
		end;
	end;
writeln('Произведение положительных элементов = ', sum);
writeln('Количество положительных элементов = ', count);	
Readln;
end.

