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
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function SummaX_Y(X,Y:real):real; stdcall; external 'MainDll.dll';
function ProizvX_Y(X,Y:real):real; stdcall; external 'MainDll.dll';
function Revers(S:string):string; stdcall; external 'MainDll.dll';

procedure TForm1.Button1Click(Sender: TObject);
var X,Y:real; S:string;
begin
  RichEdit1.Clear;
  X:=StrToFloat(Edit1.Text);
  Y:=StrToFloat(Edit2.Text);
  S:=Edit3.Text;

  ShowMessage('���������� MainDll.dll ���������, ������ ������������'
    +#10#13+'������ ��� ������������ �������');
  MessageBeep(1000);

  RichEdit1.Lines.Add('����� X � Y ����� '+ FloatToStr(SummaX_Y(X,Y)));
  RichEdit1.Lines.Add('');

  RichEdit1.Lines.Add('������������ X � Y ����� '+ FloatToStr(ProizvX_Y(X,Y)));
  RichEdit1.Lines.Add('');

  RichEdit1.Lines.Add('������ ����������� --> '+ Revers(S));


end;

end.
