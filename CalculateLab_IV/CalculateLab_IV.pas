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
sum := 0;
writeln('>>CalculateLab_IV начал работу...');
writeln('>> Создаётся матрица...');
for i:= 1 to 15 do
	begin
		arr[i]:=Random(15)-5;
		if(arr[i]<0) then write('|',arr[i],'| ')
		else write('| ',arr[i],'| ');
		if((i mod 5) = 0) then writeln;
	end;
writeln;
writeln('>>Матрица создана, начинается анализ...');
for i:= 1 to 15 do
	begin
		if(arr[i]>0)then
		begin
			count := count+1;
			sum := sum + arr[i]; 
		end;
	end;
writeln('>>Анализ завершён.');
writeln('>>Логи анализа: ');
writeln('  - Размер матрицы: 15 элементов');
writeln('  - Задан случайно: true');
writeln('  - Количество положительных элементов матрицы: ', count);
writeln('  - Сумма положительных элементов матрицы: ', sum);
writeln('>>Write by Fp_Sviatoy');
writeln('>>CalculateLab_IV закончил работу');
write('>>');
Readln;
end.

