program NoteLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Type work = Record
	 name: String;
	 pay: Integer;
   end;
Var isEnd: boolean;
	i : Integer;
	list: Array[1..10] of work;
  worker: work;
  answer: string;
begin
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
writeln('>>NoteLab ����� ������');
i := 0;
isEnd := true;
while(isEnd<>false) do
	begin
		i := i + 1;
		write('������� ��� ��������: '); readln(worker.name);
		write('������� �������� ',list[i].name,': '); readln(worker.pay);
    list[i] := worker;
		write('�������� ���������?(��/���): '); readln(answer);
		if(answer='���') then isEnd := false;
	end;
writeln('����� �� �������: ��� ���������� � �* ��� �*');
for i:=1 to 10 do
	if ((AnsiPos('�', list[i].name)<>0) or (AnsiPos('�', list[i].name)<>0)) then
		begin
			writeln('��� ���������: ', list[i].name);
			writeln('�������� ���������: ', list[i].pay);
		end;
Readln;
end.
