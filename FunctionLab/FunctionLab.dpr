program FunctionLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var  i, n, Sum, count, mid:Integer;
	  mas: Array[1..100] of Integer;
		
	  function CountMiddle():Integer;
		var i, MidleSum: Integer;
			arr: Array[1..100] of Integer;
		begin
		MidleSum:=0;
		writeln('>>Исполнение функции обработки массива...');				
			for i:= 1 to n do
				begin
					arr[i]:=Random(40)+10; 
					mas[i]:=arr[i];	
					if(arr[i]<0) then write(' ',arr[i],'  ')
					else write('  ', arr[i],'  ');
					MidleSum:=MidleSum+arr[i];
					if(i mod 10 = 0) then writeln;
				end;
			MidleSum:= MidleSum Div n;
			Result:=MidleSum;	
		end;
		procedure ProceedArray(Sum:integer);
		var i, nearest, idx: Integer;
		begin
		nearest:=mas[1];
		idx:=1;
		for i:= 1 to n do 
			if(mas[i]=sum)then
			begin
				nearest:= sum; 
				idx:=i;
			end;	
			if(mas[i] < Sum) then
				if((Sum - mas[i])<(Sum - nearest)) then 
					begin
						nearest:= mas[i];
						idx:=i;
					end; 	
			if(mas[i] > Sum) then
			if((mas[i] - sum)<(Sum - nearest)) then 
					begin
						nearest:= mas[i] - (mas[i] - sum);  
						idx:=i;
					end;
      writeln;
			writeln('>>Среднее арифиметическое текущего массива ', Sum);
			writeln('>>Ближайшее к нему, это ',idx,' элемент, со значением ',mas[idx]);
    end;
begin
randomize;
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
Sum:=0;
writeln('>>FunctionLab начал работу...');
write('>>Введите размер массивов: ');Readln(n);
write('>>Сколько массивов следует обработать? ');Readln(count);
for i:= 1 to count do ProceedArray(CountMiddle());
write('>>FunctionLab закончил работу, спасибо за использование!');
Readln;			
end.

