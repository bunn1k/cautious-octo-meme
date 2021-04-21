unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    RichEdit1: TRichEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  SummaX_Y: function(X,Y:real):real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var H:THandle; X,Y:real; S:string;
begin
  RichEdit1.Clear;
  X:=StrToFloat(Edit1.Text);
  Y:=StrToFloat(Edit2.Text);
  S:=Edit3.Text;

  H:=LoadLibrary('MainDll.dll');

  if H <> 0 then
  begin
    @SummaX_Y:=GetProcAddress(H, 'SummaX_Y');
    if @SummaX_Y <> nil then
    Richedit1.Lines.Add(FloatToStr(SummaX_Y(X,Y)));

    FreeLibrary(H);
  end;
  ShowMessage('���������� MainDll.dll ���������, ������ ������������'
    +#10#13+'������ ��� ������������ �������');
  MessageBeep(1000);



end;

end.
