unit FrameLab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
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
var data : Integer;
    result : real;
begin
  data := StrToInt(Edit1.Text);
  result := data*data*3/4;
  Edit2.Text := FloatToStr(result);
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
Form1.Close
end;
end.
         