program ArrayLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var n, i, new, count:Integer;
	  sourse: Array[1..100] of Integer;
	  output: Array[1..100] of Integer;
begin
randomize;
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
new := 0;
count := 0;
writeln('>>ArrayLab начал работу...');
write('Введите размер массива!');Readln(n);
writeln('>>Создаётся массив, пожалуйста подождите...');
for i:= 1 to n do
	begin
		sourse[i]:=Random(20)-10;
		writeln('sourse[',i,'] = ',sourse[i]);
	end;
writeln('>>Исходный массив задан, вычисляется длина нового массива...');
for i:= 1 to n do
	begin
		if((sourse[i] mod 2) <> 1) then new := new+1;
	end;
if((n-new)<>0)then
begin
  writeln('>>Длина нового массива ',new,' элементов. Исключено ',(n-new));
  writeln('>>Создаётся новый массив...');
  for i:= 1 to n do
  	begin
	  	if((sourse[i] mod 2) <> 1) then
		  	begin
			  	output[count]:=sourse[i];
      	  writeln('output[',count,'] = ', output[count]);
			  	count:=count+1;
			  end;
	  end;
writeln('>>Массив задан');
end
else write('Чётных чисел не найдено');
writeln('>>ArrayLab закончил работу, спасибо за использование!');
Readln;
end.

