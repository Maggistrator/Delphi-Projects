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
writeln('>>NoteLab начал работу');
isEnd := true;
while(isEnd<>false)
	begin
		writeln('Введите рабочего: '); readln(worker);
		writeln('Введите зарплату ',worker,': '); readln(pay);
		writeln('Добавить работника?(y/n): '); readln(answer);
		
		if(answer<>'y') then isEnd := false;
	end;
Readln;
end. 
