program NoteLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var isEnd: boolean;
Type worker: Record
	 name: String;
	 pay: Integer
begin
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
writeln('>>NoteLab ����� ������');
isEnd := true;
while(isEnd<>false)
	begin
		writeln('������� ��������: '); readln(worker);
		writeln('������� �������� ',worker,': '); readln(pay);
		writeln('�������� ���������?(y/n): '); readln(answer);
		
		if(answer<>'y') then isEnd := false;
	end;
Readln;
end. 
