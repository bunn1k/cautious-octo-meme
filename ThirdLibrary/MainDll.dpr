library MainDll;


uses
  System.SysUtils,
  System.Classes, ShareMem;

{$R *.res}

function SummaX_Y(X,Y:real):real; stdcall; {������� ����������� ����� ���� ����� X � Y}
begin
  result:=X+Y;
end;

function ProizvX_Y(X,Y:real):real; stdcall; {������� ������������ ������������ ���� ����� X � Y}
begin
  result:=X*Y;
end;

function Revers(S:string):string; stdcall; {������� ������������ ������ S �����-�������}
var i,L:byte; S_:string;
begin
  L:=length(S);
  S_:='';
  for i := 1 to L do
    S_:=S_ + S[L-i+1];
  result:=S_;
end;

exports
  SummaX_Y,
  ProizvX_Y,
  Revers;

begin
end.
