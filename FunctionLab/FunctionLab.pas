program FunctionLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var  i, i1, j, n, Sum, count, nearest, idx:Integer;
	  mas: Array[1..100] of Integer;
		
<<<<<<< HEAD
	  function CountMiddle():Integer;
		var i, MidleSum, nearest, idx, Sum: Integer;
			arr: Array[1..100] of Integer;
		begin
		MidleSum:=0;
			for i:= 1 to n do
				begin
					arr[i]:=Random(40)+10; 
					mas[i]:=arr[i];	
					if(arr[i]<0) then write(' ',arr[i],'  ')
					else write('  ', arr[i],'  ');
					MidleSum:=MidleSum+arr[i];
					if(i mod 5 = 0) then writeln;
				end;
			MidleSum:= MidleSum Div n;
			nearest:=mas[1];
			sum:= MidleSum;		
		idx:=1;
		
		for i:= 1 to n do 
			if(mas[i]=sum)then
			begin
				nearest:= sum; 
				idx:=i;
			end	
			else if(mas[i] < Sum) then
			begin
				if((Sum - mas[i])<=(Sum - nearest)) then 
					begin
						nearest:= mas[i];
						idx:=i;
						writeln('z--');
						end;
					end					
			else
			begin
			if((mas[i] - sum)<=(Sum - nearest)) then 
					begin
						nearest:= sum - (mas[i] - sum);  
						idx:=i;
						writeln('Z++');
					end; 
					end;
			writeln('‘реднее арифметическое ',MidleSum);
			writeln('>>Ѓлижайшее к нему, это ',idx,' элемент, со значением ',mas[idx]);
			Result:=MidleSum;	
		end;
=======
	  function CountMiddle(var arr: Array of Integer):Integer;
		var i, MidleSum: Integer;
		begin
			MidleSum := 0;
			writeln('>>Исполнение функции обработки массива...');				
			for i:= 1 to n do
				begin
					MidleSum := MidleSum + arr[i];
				end;
			MidleSum:= MidleSum Div n;
			writeln('>>Среднее арифиметическое текущего массива ', MidleSum);
			Result := MidleSum;	
		end;
		
>>>>>>> origin/master
begin
randomize;
SetConsoleCP(1251); 
SetConsoleOutPutCP(1251);
writeln('>>FunctionLab начал работу...');
<<<<<<< HEAD
write('>>‚ведите размер массивов: ');Readln(n);
write('>>‘колько массивов следует обработать? ');Readln(count);
for i:= 1 to count do 
	begin
		CountMiddle;
=======
write('>>Введите размер массивов: ');Readln(n);
write('>>Сколько массивов следует обработать? ');Readln(count);
for i:= 1 to count do 
	begin
		for i1 := 1 to n do 
			begin
				mas[i1] := Random(10);	
				if(mas[i1]<0) then write(' ',mas[i1],'  ')
				else write('  ', mas[i1],'  ');
				if(i1 mod 5 = 0) then writeln;
			end;
		sum := CountMiddle(mas);
		nearest := abs(sum - mas[1]);
		idx := 1;
		for j := 1 to n do 
			if(mas[j] = sum)then
			begin
				nearest := 0; 
				idx := j;
			end;			
			if(mas[j] < Sum) then
				if((Sum - mas[j])<nearest) then 
					begin
						nearest := sum - mas[j];
						idx := j;
					end; 	
			if(mas[j] > Sum) then
				if((mas[j] - sum)<nearest) then 
					begin
						nearest := mas[j] - sum;  
						idx := j;
					end; 
			writeln('>>Ближайшее к нему, это ',idx,' элемент, со значением ',mas[idx]);
>>>>>>> origin/master
	end;
write('>>FunctionLab закончил работу, спасибо за использование!');
Readln;			
end.

