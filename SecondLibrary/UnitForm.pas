unit UnitForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public
    dx,dy:integer;
  end;

var
  Form1: TForm1;

procedure CreateMyForm(Cvet:TColor); stdcall;

implementation

{$R *.dfm}

procedure CreateMyForm(Cvet:TColor); stdcall;
begin
  Form1:=TForm1.Create(Form1);
  Form1.Color:=Cvet;
  Form1.Show;
  ShowMessage('� �����!!!'+ #10#13 +
   '��������� �� ������������ ����������');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  dx:=1;
  dy:=1;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Timer1.Enabled:=Not(Timer1.Enabled);
  if Timer1.Enabled = true then SpeedButton1.Caption:='����'
       else SpeedButton1.Caption:='����';
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if (SpeedButton1.Width <= 10) or (SpeedButton1.Width >= 150) then dx:=-dx;
  if (SpeedButton1.Width <= 10) or (SpeedButton1.Width >= 150) then dy:=-dy;

  SpeedButton1.Width:=SpeedButton1.Width+dx;
  SpeedButton1.Height:=SpeedButton1.Height+dy;

  Form1.Width:=Form1.Width-dx;
  Form1.Height:=Form1.Height-dy;

end;

end.
