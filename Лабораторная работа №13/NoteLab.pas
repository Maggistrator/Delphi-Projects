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
writeln('>>NoteLab начал работу');
i := 0;
isEnd := true;
while(isEnd<>false) do
	begin
		i := i + 1;
		write('Введите имя рабочего: '); readln(worker.name);
		write('Введите зарплату ',list[i].name,': '); readln(worker.pay);
    list[i] := worker;
		write('Добавить работника?(да/нет): '); readln(answer);
		if(answer='нет') then isEnd := false;
	end;
writeln('Вывод по фильтру: Имя начинаетсЯ с А* или С*');
for i:=1 to 10 do
	if ((AnsiPos('А', list[i].name)<>0) or (AnsiPos('С', list[i].name)<>0)) then
		begin
			writeln('Имя работника: ', list[i].name);
			writeln('Зарплата работника: ', list[i].pay);
		end;
Readln;
end.
