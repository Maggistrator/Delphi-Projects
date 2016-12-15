program Project4; 

{$APPTYPE CONSOLE} 

uses 
SysUtils, 
Windows; 

Var 
a:array[1..50] of integer; 
i,n,x:integer; 
begin 
randomize;
SetConsoleCP(1251); 
SetConsoleOutputCP(1251); 
write('Введите размерность массива: '); 
readln(n); 
for i:= 1 to n do
	begin
		a[i]:=Random(20)-10;
		write(a[i], ' ');
	end;
for i:= 4 to n do 
	begin 	
		a[i]:=a[i+1]; 
	end; 
writeln;
writeln('Вывод массива'); 
for i:= 1 to n-1 do write(a[i]:3); 
readln; 
end.
