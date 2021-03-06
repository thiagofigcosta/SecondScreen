unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, System.ImageList, FMX.ImgList, FMX.Edit,FMX.Platform,
  FMX.Objects;

type
  TForm1 = class(TForm)
    IdTCPClient1: TIdTCPClient;
    A1: TPanel;
    A10: TPanel;
    IA10: TImage;
    A11: TPanel;
    IA11: TImage;
    A2: TPanel;
    IA2: TImage;
    A3: TPanel;
    IA3: TImage;
    A4: TPanel;
    IA4: TImage;
    A5: TPanel;
    IA5: TImage;
    A6: TPanel;
    IA6: TImage;
    A7: TPanel;
    IA7: TImage;
    A8: TPanel;
    IA8: TImage;
    A9: TPanel;
    IA9: TImage;
    B1: TPanel;
    IB1: TImage;
    B10: TPanel;
    IB10: TImage;
    B11: TPanel;
    IB11: TImage;
    B2: TPanel;
    IB2: TImage;
    B3: TPanel;
    IB3: TImage;
    B4: TPanel;
    IB4: TImage;
    B5: TPanel;
    IB5: TImage;
    B6: TPanel;
    IB6: TImage;
    B7: TPanel;
    IB7: TImage;
    B8: TPanel;
    IB8: TImage;
    B9: TPanel;
    IB9: TImage;
    C1: TPanel;
    IC1: TImage;
    C10: TPanel;
    IC10: TImage;
    C11: TPanel;
    IC11: TImage;
    C2: TPanel;
    IC2: TImage;
    C3: TPanel;
    IC3: TImage;
    C4: TPanel;
    IC4: TImage;
    C5: TPanel;
    IC5: TImage;
    C6: TPanel;
    IC6: TImage;
    C7: TPanel;
    IC7: TImage;
    C8: TPanel;
    IC8: TImage;
    C9: TPanel;
    IC9: TImage;
    D1: TPanel;
    ID1: TImage;
    D10: TPanel;
    ID10: TImage;
    D11: TPanel;
    ID11: TImage;
    D2: TPanel;
    ID2: TImage;
    D3: TPanel;
    ID3: TImage;
    D4: TPanel;
    ID4: TImage;
    D5: TPanel;
    ID5: TImage;
    D6: TPanel;
    ID6: TImage;
    D7: TPanel;
    ID7: TImage;
    D8: TPanel;
    ID8: TImage;
    D9: TPanel;
    ID9: TImage;
    E1: TPanel;
    IE1: TImage;
    E10: TPanel;
    IE10: TImage;
    E11: TPanel;
    IE11: TImage;
    E2: TPanel;
    IE2: TImage;
    E3: TPanel;
    IE3: TImage;
    E4: TPanel;
    IE4: TImage;
    E5: TPanel;
    IE5: TImage;
    E6: TPanel;
    IE6: TImage;
    E7: TPanel;
    IE7: TImage;
    E8: TPanel;
    IE8: TImage;
    E9: TPanel;
    IE9: TImage;
    F1: TPanel;
    IF1: TImage;
    F10: TPanel;
    IF10: TImage;
    F11: TPanel;
    IF11: TImage;
    F2: TPanel;
    IF2: TImage;
    F3: TPanel;
    IF3: TImage;
    F4: TPanel;
    IF4: TImage;
    F5: TPanel;
    IF5: TImage;
    F6: TPanel;
    IF6: TImage;
    F7: TPanel;
    IF7: TImage;
    F8: TPanel;
    IF8: TImage;
    F9: TPanel;
    IF9: TImage;
    G1: TPanel;
    IG1: TImage;
    G10: TPanel;
    IG10: TImage;
    G11: TPanel;
    IG11: TImage;
    G2: TPanel;
    IG2: TImage;
    G3: TPanel;
    IG3: TImage;
    G4: TPanel;
    IG4: TImage;
    G5: TPanel;
    IG5: TImage;
    G6: TPanel;
    IG6: TImage;
    G7: TPanel;
    IG7: TImage;
    G8: TPanel;
    IG8: TImage;
    G9: TPanel;
    IG9: TImage;
    IA1: TImage;
    Panel1: TPanel;
    editIP: TEdit;
    Button1: TButton;
    editPort: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    function getId(indexToC:Integer) :String;
    procedure FormCreate(Sender: TObject);
    procedure IdTCPClient1Connected(Sender: TObject);
    procedure IdTCPClient1Disconnected(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure applyLayout();
    procedure A2Click(Sender: TObject);
    procedure A3Click(Sender: TObject);
    procedure A4Click(Sender: TObject);
    procedure A5Click(Sender: TObject);
    procedure A6Click(Sender: TObject);
    procedure A7Click(Sender: TObject);
    procedure A8Click(Sender: TObject);
    procedure A9Click(Sender: TObject);
    procedure A10Click(Sender: TObject);
    procedure A11Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure B4Click(Sender: TObject);
    procedure B5Click(Sender: TObject);
    procedure B6Click(Sender: TObject);
    procedure B7Click(Sender: TObject);
    procedure B8Click(Sender: TObject);
    procedure B9Click(Sender: TObject);
    procedure B10Click(Sender: TObject);
    procedure B11Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure C4Click(Sender: TObject);
    procedure C5Click(Sender: TObject);
    procedure C6Click(Sender: TObject);
    procedure C7Click(Sender: TObject);
    procedure C8Click(Sender: TObject);
    procedure C9Click(Sender: TObject);
    procedure C10Click(Sender: TObject);
    procedure C11Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure D2Click(Sender: TObject);
    procedure D3Click(Sender: TObject);
    procedure D4Click(Sender: TObject);
    procedure D5Click(Sender: TObject);
    procedure D6Click(Sender: TObject);
    procedure D7Click(Sender: TObject);
    procedure D8Click(Sender: TObject);
    procedure D9Click(Sender: TObject);
    procedure D10Click(Sender: TObject);
    procedure D11Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
    procedure E3Click(Sender: TObject);
    procedure E4Click(Sender: TObject);
    procedure E5Click(Sender: TObject);
    procedure E6Click(Sender: TObject);
    procedure E7Click(Sender: TObject);
    procedure E8Click(Sender: TObject);
    procedure E9Click(Sender: TObject);
    procedure E10Click(Sender: TObject);
    procedure E11Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure F2Click(Sender: TObject);
    procedure F3Click(Sender: TObject);
    procedure F4Click(Sender: TObject);
    procedure F5Click(Sender: TObject);
    procedure F6Click(Sender: TObject);
    procedure F7Click(Sender: TObject);
    procedure F8Click(Sender: TObject);
    procedure F9Click(Sender: TObject);
    procedure F10Click(Sender: TObject);
    procedure F11Click(Sender: TObject);
    procedure G1Click(Sender: TObject);
    procedure G2Click(Sender: TObject);
    procedure G3Click(Sender: TObject);
    procedure G4Click(Sender: TObject);
    procedure G5Click(Sender: TObject);
    procedure G6Click(Sender: TObject);
    procedure G7Click(Sender: TObject);
    procedure G8Click(Sender: TObject);
    procedure G9Click(Sender: TObject);
    procedure G10Click(Sender: TObject);
    procedure G11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sizeX:Array[0..76] of Integer;
  sizeY:Array[0..76] of Integer;
  pad:Array[0..76] of Boolean;
  enable:Array[0..76] of Boolean;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}

procedure TForm1.A10Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('A10');
end;

procedure TForm1.A11Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('A11');
end;

procedure TForm1.A1Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('A1');
end;

procedure TForm1.B10Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('B10');
end;

procedure TForm1.B11Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('B11');
end;

procedure TForm1.B1Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('B1');
end;

procedure TForm1.B2Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('B2');
end;

procedure TForm1.B3Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('B3');
end;

procedure TForm1.B4Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('B4');
end;

procedure TForm1.B5Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('B5');
end;

procedure TForm1.B6Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('B6');
end;

procedure TForm1.B7Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('B7');
end;

procedure TForm1.B8Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('B8');
end;

procedure TForm1.B9Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('B9');
end;

procedure TForm1.Button1Click(Sender: TObject);

begin
IdTCPClient1.Port := StrToInt(editPort.Text);
IdTCPClient1.Host := editIP.Text;
try
IdTCPClient1.Connect;
finally

end;
end;

procedure TForm1.C10Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('C10');
end;

procedure TForm1.C11Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('C11');
end;

procedure TForm1.C1Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('C1');
end;

procedure TForm1.C2Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('C2');
end;

procedure TForm1.C3Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('C3');
end;

procedure TForm1.C4Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('C4');
end;

procedure TForm1.C5Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('C5');
end;

procedure TForm1.C6Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('C6');
end;

procedure TForm1.C7Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('C7');
end;

procedure TForm1.C8Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('C8');
end;

procedure TForm1.C9Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('C9');
end;

procedure TForm1.D10Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('D10');
end;

procedure TForm1.D11Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('D11');
end;

procedure TForm1.D1Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('D1');
end;

procedure TForm1.D2Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('D2');
end;

procedure TForm1.D3Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('D3');
end;

procedure TForm1.D4Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('D4');
end;

procedure TForm1.D5Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('D5');
end;

procedure TForm1.D6Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('D6');
end;

procedure TForm1.D7Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('D7');
end;

procedure TForm1.D8Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('D8');
end;

procedure TForm1.D9Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('D9');
end;

procedure TForm1.E10Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('E10');
end;

procedure TForm1.E11Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('E11');
end;

procedure TForm1.E1Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('E1');
end;

procedure TForm1.E2Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('E2');
end;

procedure TForm1.E3Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('E3');
end;

procedure TForm1.E4Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('E4');
end;

procedure TForm1.E5Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('E5');
end;

procedure TForm1.E6Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('E6');
end;

procedure TForm1.E7Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('E7');
end;

procedure TForm1.E8Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('E8');
end;

procedure TForm1.E9Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('E9');
end;

procedure TForm1.F10Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('F10');
end;

procedure TForm1.F11Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('F11');
end;

procedure TForm1.F1Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('F1');
end;

procedure TForm1.F2Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('F2');
end;

procedure TForm1.F3Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('F3');
end;

procedure TForm1.F4Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('F4');
end;

procedure TForm1.F5Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('F5');
end;

procedure TForm1.F6Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('F6');
end;

procedure TForm1.F7Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('F7');
end;

procedure TForm1.F8Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('F8');
end;

procedure TForm1.F9Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('F9');
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
IdTCPClient1.ConnectTimeout := 5000;

end;

procedure TForm1.G10Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('G10');
end;

procedure TForm1.G11Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('G11');
end;

procedure TForm1.G1Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('G1');
end;

procedure TForm1.G2Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('G2');
end;

procedure TForm1.G3Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('G3');
end;

procedure TForm1.G4Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('G4');
end;

procedure TForm1.G5Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('G5');
end;

procedure TForm1.G6Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('G6');
end;

procedure TForm1.G7Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('G7');
end;

procedure TForm1.G8Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('G8');
end;

procedure TForm1.G9Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('G9');
end;

procedure TForm1.IdTCPClient1Connected(Sender: TObject);
var
i:Integer;
read:String;
Stream:TMemoryStream;
x:TBitmap;
begin
Stream:=TMemoryStream.Create;
Panel1.Enabled:=false;
Panel1.Visible:=false;
for i := 0 to 76 do
  begin
  sizeX[i]:=StrToInt(IdTCPClient1.IOHandler.ReadLn);
  sizeY[i]:=StrToInt(IdTCPClient1.IOHandler.ReadLn);
  enable[i]:=StrToInt(IdTCPClient1.IOHandler.ReadLn).ToBoolean;
  pad[i]:=StrToInt(IdTCPClient1.IOHandler.ReadLn).ToBoolean;
  if IdTCPClient1.IOHandler.ReadLn='image:' then
    begin
      IdTCPClient1.IOHandler.LargeStream:=true;
      IdTCPClient1.IOHandler.ReadStream(Stream);  //(Stream,-1,false)
      x.CreateFromStream(Stream);
      Stream.Free;
      TImage(Form1.FindComponent('I'+getId(i))).Bitmap:=x;
    end;
  end;
IdTCPClient1.IOHandler.WriteLn('layout carregado');
for i := 0 to 76 do
  TPanel(FindComponent(getId(i))).Enabled:=true;
applyLayout();
end;

procedure TForm1.IdTCPClient1Disconnected(Sender: TObject);
var
i:Integer;
begin
Panel1.Enabled:=true;
Panel1.Visible:=true;
for i := 0 to 76 do
  TPanel(FindComponent(getId(i))).Enabled:=false;
end;
function TForm1.getId(indexToC:Integer):String;
begin
 case Trunc((indexToC/11)+1) of
  1: Result:='A';
  2: Result:='B';
  3: Result:='C';
  4: Result:='D';
  5: Result:='E';
  6: Result:='F';
  7: Result:='G';
  end;
  Result.Insert(Result.Length+1,IntToStr((indexToC mod 11)+1));
end;

procedure TForm1.A2Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('A2');
end;

procedure TForm1.A3Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('A3');
end;

procedure TForm1.A4Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('A4');
end;

procedure TForm1.A5Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('A5');
end;

procedure TForm1.A6Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('A6');
end;

procedure TForm1.A7Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('A7');
end;

procedure TForm1.A8Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('A8');
end;

procedure TForm1.A9Click(Sender: TObject);
begin
IdTCPClient1.IOHandler.WriteLn('A9');
end;

procedure TForm1.applyLayout;
var
i,j,k:Integer;
VlwPaiObj: TPanel;
begin
for k := 0 to 76 do
begin
  if sizeX[k]<>1 then
  begin
  VlwPaiObj:=TPanel(Form1.FindComponent(form1.getId(k)));
  VlwPaiObj.Width:=60*(sizeX[k]+1);
  for i := 1 to sizeX[k]-1 do
  begin
   VlwPaiObj:=TPanel(Form1.FindComponent(form1.getId(k+i*11)));
   VlwPaiObj.Enabled:=false;
   VlwPaiObj.Visible:=false;
    if sizeY[k]<>1 then
    for j := 1 to sizeY[k]-1 do
    begin
     VlwPaiObj:=TPanel(Form1.FindComponent(form1.getId(k+i*11+j)));
     VlwPaiObj.Enabled:=false;
     VlwPaiObj.Visible:=false;
    end;
   end;
   if sizeY[k]<>1 then
   VlwPaiObj:=TPanel(Form1.FindComponent(form1.getId(k)));
    VlwPaiObj.Height:=60*sizeY[k];
    for j := 1 to sizeY[k]-1 do  //DESNECESSARIO
     begin
     VlwPaiObj:=TPanel(Form1.FindComponent(form1.getId(k+j)));
     VlwPaiObj.Enabled:=false;
     VlwPaiObj.Visible:=false;
     end;
  end;
end;
end;

end.
