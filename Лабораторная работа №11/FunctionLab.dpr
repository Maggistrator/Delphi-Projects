program FunctionLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var  i, n, count, mid:Integer;
	  mas: Array[1..100] of Integer;
		procedure qSort(var A: Array of Integer; min, max: Integer);
var i, j, supp, tmp: Integer;
begin
supp:=A[max-((max-min) div 2)];
i:=min; j:=max;
while i<j do
  begin
    while A[i]<supp do i:=i+1;
    while A[j]>supp do j:=j-1;
    if i<=j then
      begin
        tmp:=A[i]; A[i]:=A[j]; A[j]:=tmp;
        i:=i+1; j:=j-1;
      end;
  end;
if min<j then qSort(A, min, j);
if i<max then qSort(A, i, max);
end; 
	  function ProceedArray():Integer;
		var i, nearest, idx: Integer;
			MidleSum: Real;
		begin
		writeln;
		MidleSum:=0;
			for i:= 1 to n do
				begin
					mas[i]:=Random(10); 
					mas[i]:=mas[i];	
					if(mas[i]<0) then write(' ',mas[i],'  ')
					else write('  ', mas[i],'  ');
					MidleSum:=MidleSum+mas[i];
					if(i mod 5 = 0) then writeln;
				end;
			MidleSum := MidleSum / n;
			writeln('Среднее арифметическое: ',MidleSum:2:2);
			//writeln('Сортируем массив...');
			qSort(mas,0,n);
			i := 1;
			while(mas[i] <= MidleSum) do 
				begin
					idx:=i;
					i := i + 1;
					nearest := mas[idx];	
				end;
			if ((MidleSum - nearest)>(mas[idx + 1] - MidleSum)) then 
				begin
					idx := idx + 1;
					nearest := mas[idx];
				end;
			writeln('Ближайшее: ', nearest,' с индексом ',idx);
			Result := nearest;
		end;
begin
randomize;
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
writeln('>>FunctionLab начал работу...');
write('>>Сколько массивов следует обработать? ');Readln(count);
for i:= 1 to count do 
	begin
		write('>>Введите размер массивов: ');Readln(n);
		write('Вычисляем... ',ProceedArray);
	end;
write('>>FunctionLab закончил работу, спасибо за использование!');
Readln;			
end.

