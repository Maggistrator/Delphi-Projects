program CalculateLab_IV;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var i, sum, count:Integer;
	  arr: Array[1..15] of Integer;
begin
randomize;
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
count := 0;
sum := 0;
writeln('>>CalculateLab_IV ����� ������...');
writeln('>> �������� �������...');
for i:= 1 to 15 do
	begin
		arr[i]:=Random(15)-5;
		if(arr[i]<0) then write('|',arr[i],'| ')
		else write('| ',arr[i],'| ');
		if((i mod 5) = 0) then writeln;
	end;
writeln;
writeln('>>������� �������, ���������� ������...');
for i:= 1 to 15 do
	begin
		if(arr[i]>0)then
		begin
			count := count+1;
			sum := sum + arr[i]; 
		end;
	end;
writeln('>>������ ��������.');
writeln('>>���� �������: ');
writeln('  - ������ �������: 15 ���������');
writeln('  - ����� ��������: true');
writeln('  - ���������� ������������� ��������� �������: ', count);
writeln('  - ����� ������������� ��������� �������: ', sum);
writeln('>>Write by Fp_Sviatoy');
writeln('>>CalculateLab_IV �������� ������');
write('>>');
Readln;
end.

