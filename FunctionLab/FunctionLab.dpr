program FunctionLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

<<<<<<< HEAD
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
			writeln('������� ��������������: ',MidleSum:2:2);
			//writeln('��������� ������...');
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
			writeln('���������: ', nearest);
			Result := nearest;
		end;
=======
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
		
>>>>>>> origin/master
begin
randomize;
SetConsoleCP(1251); 
SetConsoleOutPutCP(1251);
writeln('>>FunctionLab ����� ������...');
write('>>������� �������� ������� ����������? ');Readln(count);
for i:= 1 to count do 
	begin
<<<<<<< HEAD
		write('>>������� ������ ��������: ');Readln(n);
		write('���������... ',ProceedArray);
=======
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
>>>>>>> origin/master
	end;
write('>>FunctionLab �������� ������, ������� �� �������������!');
Readln;			
end.

