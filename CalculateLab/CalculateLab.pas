program CalculateLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var i, sum, count:Integer;
	  arr: Array[1..100] of Integer;
begin
randomize;
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
count := 0;
sum := 0;
writeln('>>CalculateLab начал работу...');
writeln('>> Создаётся матрица значений от 4 до 30...');
for i:= 4 to 30 do
	begin
		arr[i]:=i;
		if((i mod 4) = 0) then writeln;
		if(arr[i]<10) then write('|',arr[i],' | ')
		else write('|',arr[i],'| ');
	end;
writeln;
writeln('>>Матрица создана, начинается анализ...');
for i:= 4 to 30 do
	begin
		if((arr[i] mod 2)=0)then
		begin
			count := count+1;
			sum := sum + arr[i];
		end;
	end;
writeln('>>Анализ завершён.');
writeln('>>Логи анализа: ');
writeln('  - Количество чётных элементов от 4 до 30 насчитывает ', count);
writeln('  - Сумма всех чётных элементов от 4 до 30 составляет ', sum);
writeln('>>CalculateLab закончил работу');
write('>>');
Readln;
end.

