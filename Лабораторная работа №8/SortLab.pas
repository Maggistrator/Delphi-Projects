program SortLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var n, i, count :Integer;
	  sourse: Array[1..100] of Integer;
	  output: Array[1..100] of Integer;
begin
randomize;
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
count:=1;
writeln('>>SortLab ����� ������...');
write('������� ������ �������!');Readln(n);
writeln('>>�������� ������, ���������� ���������...');
for i:= 1 to n do
	begin
		sourse[i]:=Random(20)-10;
		writeln('sourse[',i,'] = ',sourse[i]);
	end;
writeln('>>������ �����������, ����������, ���������...');
writeln('>>�������� �������:');
for i:= 1 to n do
	begin
		if((i mod 2) <> 0) then 
			begin
				output[count]:=sourse[i];
				writeln('output[',count,'] = 'output[count]);
				count := count+1;
			end;	
	end;
writeln('>>׸���� �������:');
for i:= 1 to n do
	begin
		if((i mod 2) <> 1) then 
			begin
				output[count]:=sourse[i];
				writeln('output[',count,'] = 'output[count]);
				count := count+1;
			end;	
	end;	
writeln('>>������ ������������ �������!');
writeln('>>SortLab �������� ������, ������� �� �������������!');
Readln;			
end.

