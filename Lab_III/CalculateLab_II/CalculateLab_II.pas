program CalculateLab_II;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var x, y, i, sum:Real;
begin
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
y := 0;
x := -3;
i := 0;
writeln('>>CalculateLab_II ����� ������...');
writeln('>>����������� �������� ������� f(x)=x^2+15x+8 �� ���������� �� -3 �� 3');
while(x<3) do
	begin
	y := sqr(x) + 15*x +8;
	x := x + 0.2;
	if(y>0) then write(' ');
	if((y>0) and (y<10)) then write(' ');
	if((y<0) and (x>-10)) then write(' ');
	write(y:2:2,'| ');	
	if(y>0) then write(' ');
	if((y>0) and (y<10)) then write(' ');
	if((y<0) and (x>-10)) then write(' ');
	i := i + 1;
	if(i = 5) then 
		begin 
			writeln;
			i := 0;
		end;
	end;	
writeln('>>CalculateLab �������� ������');
write('>>');
Readln;
end.

