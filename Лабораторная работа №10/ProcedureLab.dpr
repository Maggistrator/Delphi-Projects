program ProcedureLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var  i, S1, S2, buf, n :Integer;
	  z: Real;
<<<<<<< HEAD
		procedure CountPozitive(arr: Array of Integer; n: integer);
		var i, counter: integer;
		begin
		counter:=0;
			for i:= 1 to n do 
				if arr[i]>0 then counter := counter + 1;
				writeln('>>� ������������� ������� ', counter, ' ������������� ���������.');
				buf:=counter;
		end;
=======
	  isFunny: String;
>>>>>>> origin/master

	  procedure ProceedArray(n:integer);
		var i, counter: Integer;
			arr: Array[1..100] of Integer;
		begin
<<<<<<< HEAD
		writeln('>>���������� ��������� ��������� �������...');
		for i:= 1 to n do
			begin				
				arr[i]:=Random(5)-2;
				if(arr[i]<0) then write(' ',arr[i],'  ')
				else write('  ', arr[i],'  ');
				if(i mod 10 = 0) then writeln;
			end;
		CountPozitive(arr, n);
=======
    counter:=0;
    for i:= 1 to n do
      begin
				if(i=1)then writeln('>>���������� ��������� ��������� �������...');
				if isFunny = 'y' then
						begin
							arr[i]:=Random(5)-2;
							if(arr[i]<0) then write('|',arr[i],'|__')
							else write('| ', arr[i],'|__');
							if(i mod 5 = 0) then writeln('|');
						end
						else
							begin
								arr[i]:=Random(5)-2;
								if(arr[i]<0) then write(' ',arr[i],'  ')
								else write('  ', arr[i],'  ');
								if(i mod 5 = 0) then writeln;
							end;
				end;
		  	for i:= 1 to n do
        if arr[i]>0 then counter := counter + 1;
        writeln('>>� ������������� ������� ', counter, ' ������������� ���������.');
        buf:=counter;

>>>>>>> origin/master
		end;
begin
randomize;
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
writeln('>>ProcedureLab ����� ������...');
writeln('>>�������� ������, ���������� ���������...');
<<<<<<< HEAD
ProceedArray(60);
=======
//write('>>�������� �������� �����?(y/n): ');Readln(isFunny);
isFunny:='n';
if isFunny = 'y' then writeln('>>�������� ����� �������!');
write('������� ����� ������� �������: '); Readln(n);
ProceedArray(n);
>>>>>>> origin/master
S1:=buf;
write('������� ����� ������� �������: '); Readln(n);
ProceedArray(n);
S2:=buf;
z:= (S1+S2)/2;
writeln('������� ����� z = ',z:2:2);
write('>>ProcedureLab �������� ������, ������� �� �������������!');
Readln;
end.


