program ProcedureLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var  i, S1, S2, buf :Integer;
	  z: Real;
		procedure CountPozitive(arr: Array of Integer; n: integer);
		var i, counter: integer;
		begin
		counter:=0;
			for i:= 1 to n do 
				if arr[i]>0 then counter := counter + 1;
				writeln('>>� ������������� ������� ', counter, ' ������������� ���������.');
				buf:=counter;
		end;

	  procedure ProceedArray(n:integer);
		var i: Integer;
			arr: Array[1..100] of Integer;
		begin
		writeln('>>���������� ��������� ��������� �������...');
		for i:= 1 to n do
			begin				
				arr[i]:=Random(5)-2;
				if(arr[i]<0) then write(' ',arr[i],'  ')
				else write('  ', arr[i],'  ');
				if(i mod 10 = 0) then writeln;
			end;
		end;
		CountPozitive(arr, n);
		end;
begin
randomize;
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
writeln('>>ProcedureLab ����� ������...');
writeln('>>�������� ������, ���������� ���������...');
ProceedArray(60);
S1:=buf;
ProceedArray(50);
S2:=buf;
z:= (S1+S2)/2;
writeln('������� ����� z = ',z:2:2);
write('>>ProcedureLab �������� ������, ������� �� �������������!');
Readln;			
end.

