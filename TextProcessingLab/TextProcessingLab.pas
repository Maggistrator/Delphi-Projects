program TextProcessingLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

<<<<<<< HEAD
Var text: String;
begin
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
writeln('>>TextProcessingLab начал работу');
writeln('Введите строку: '); readln(text);
if(length(text)=0) then writeln('Строка пуста')
else
	begin
		text := StringReplace(text, 'child', 'children', [rfReplaceAll, rfIgnoreCase]);
		writeln('>>Все вхождения слова child заменены на children');
		writeln('Строка: ',text); 	
	end;
=======
Var i, sum, count:Integer;
	text: String;
//	word: Array[1..45] of String;
begin
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
Readln('¬ведите текст: ', text);
text := StringReplace(text, ' child ', ' children ', [rfReplaceAll, rfIgnoreCase]);
Writeln('¬се вхождени€ слова "child" заменены на "children"');
Writeln('—трока: ', text);
>>>>>>> origin/master
Readln;
end. 

//Child like child, nothing special