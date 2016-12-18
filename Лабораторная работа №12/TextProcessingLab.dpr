program TextProcessingLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var text: String;
begin
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
writeln('>>TextProcessingLab начал работу');
write('>>Введите строку: '); readln(text);
if(length(text)=0) then writeln('Строка пуста')
else
	begin
		text := StringReplace(text, 'child', 'children', [rfReplaceAll, rfIgnoreCase]);
		writeln('>>Все вхождения слова child заменены на children');
		writeln('Строка: ',text);
	end;
Readln;
end.
