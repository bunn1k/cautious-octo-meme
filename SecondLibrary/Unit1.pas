unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ColorBox1: TColorBox;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

procedure CreateMyForm(Cvet:TColor); stdcall;

external
   'MyForm.dll';

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var cvet:TColor;
begin
  cvet:=ColorBox1.Selected;
  CreateMyForm(cvet);
end;

end.
