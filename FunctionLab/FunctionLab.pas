program FunctionLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var  i, i1, j, n, Sum, count, nearest, idx:Integer;
	  mas: Array[1..100] of Integer;
		
	  function CountMiddle(var arr: Array of Integer):Integer;
		var i, MidleSum: Integer;
		begin
			MidleSum := 0;
			writeln('>>���������� ������� ��������� �������...');				
			for i:= 1 to n do
				begin
					MidleSum := MidleSum + arr[i];
				end;
			MidleSum:= MidleSum Div n;
			writeln('>>������� ��������������� �������� ������� ', MidleSum);
			Result := MidleSum;	
		end;
		
begin
randomize;
SetConsoleCP(1251); 
SetConsoleOutPutCP(1251);
writeln('>>FunctionLab ����� ������...');
write('>>������� ������ ��������: ');Readln(n);
write('>>������� �������� ������� ����������? ');Readln(count);
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
			writeln('>>��������� � ����, ��� ',idx,' �������, �� ��������� ',mas[idx]);
	end;
write('>>FunctionLab �������� ������, ������� �� �������������!');
Readln;			
end.

