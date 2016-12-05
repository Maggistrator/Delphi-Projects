program TextProcessingLab;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

Var i, sum, count:Integer;
	text: String;
begin
SetConsoleCP(1251);
SetConsoleOutPutCP(1251);
Readln('¬ведите текст: ', text);
if(text=='child') then  text := StringReplace(text, ' child ', ' children ',
                          [rfReplaceAll, rfIgnoreCase]);
Readln;
end. 

