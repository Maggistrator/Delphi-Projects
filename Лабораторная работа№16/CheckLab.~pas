unit CheckLab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var data: real;
begin
data := StrToFloat(Edit1.Text);
   if(RadioButton1.checked) then   
   Edit2.Text := FloatToStr(data*data*3.14);
   if (RadioButton2.checked) then
   Edit2.Text := FloatToStr(4/3*data*data*data*3.14);
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
Form1.Close
end;
end.
