program FunctionLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var  i, n, Sum, count, mid:Integer;
	  mas: Array[1..100] of Integer;
		
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
			writeln('������� �������������� ',MidleSum);
			writeln('>>��������� � ����, ��� ',idx,' �������, �� ��������� ',mas[idx]);
			Result:=MidleSum;	
		end;
begin
randomize;
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
Sum:=0;
writeln('>>FunctionLab ����� ������...');
write('>>������� ������ ��������: ');Readln(n);
write('>>������� �������� ������� ����������? ');Readln(count);
for i:= 1 to count do 
	begin
		CountMiddle;
	end;
write('>>FunctionLab �������� ������, ������� �� �������������!');
Readln;			
end.

