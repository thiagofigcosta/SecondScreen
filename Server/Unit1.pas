unit Unit1;
{
SERVER:
  btn atualizar layout
  restabelecer conexao
  tamanho dos botoes bugado
  desabilitar botoes devagar
  programar a fun��o pad
  refazer o sistemas de gravar teclas (tempo pressionado e registrar apos soltar)

CLIENTE:
  carregar imagens
  auto ajustar tela de acordo com o tamanho
  pogramar a fun��o pad
}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdCustomTCPServer, IdTCPServer, Vcl.ExtCtrls, unit2, inifiles, IdContext;

type
  TForm1 = class(TForm)
    IdTCPServer1: TIdTCPServer;
    Button1: TButton;
    A1: TButton;
    B1: TButton;
    C1: TButton;
    D1: TButton;
    E1: TButton;
    F1: TButton;
    G1: TButton;
    G2: TButton;
    F2: TButton;
    E2: TButton;
    D2: TButton;
    C2: TButton;
    B2: TButton;
    A2: TButton;
    G3: TButton;
    F3: TButton;
    E3: TButton;
    D3: TButton;
    C3: TButton;
    B3: TButton;
    A3: TButton;
    G4: TButton;
    F4: TButton;
    E4: TButton;
    D4: TButton;
    C4: TButton;
    B4: TButton;
    A4: TButton;
    G5: TButton;
    F5: TButton;
    E5: TButton;
    D5: TButton;
    C5: TButton;
    B5: TButton;
    A5: TButton;
    A6: TButton;
    B6: TButton;
    C6: TButton;
    D6: TButton;
    E6: TButton;
    F6: TButton;
    G6: TButton;
    G7: TButton;
    F7: TButton;
    E7: TButton;
    D7: TButton;
    C7: TButton;
    B7: TButton;
    A7: TButton;
    G8: TButton;
    F8: TButton;
    E8: TButton;
    D8: TButton;
    C8: TButton;
    B8: TButton;
    A8: TButton;
    G9: TButton;
    F9: TButton;
    E9: TButton;
    D9: TButton;
    C9: TButton;
    B9: TButton;
    A9: TButton;
    G10: TButton;
    F10: TButton;
    E10: TButton;
    D10: TButton;
    C10: TButton;
    A10: TButton;
    G11: TButton;
    F11: TButton;
    E11: TButton;
    D11: TButton;
    C11: TButton;
    B11: TButton;
    A11: TButton;
    Button79: TButton;
    Timer: TTimer;
    B10: TButton;
    debug: TMemo;
    Label1: TLabel;
    editIP: TEdit;
    editPort: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure writeToIni();
    function getId(indexToC:Integer) :String;
    procedure B1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure G1Click(Sender: TObject);
    procedure A2Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure D2Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
    procedure F2Click(Sender: TObject);
    procedure G2Click(Sender: TObject);
    procedure A3Click(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure D3Click(Sender: TObject);
    procedure E3Click(Sender: TObject);
    procedure F3Click(Sender: TObject);
    procedure G3Click(Sender: TObject);
    procedure A4Click(Sender: TObject);
    procedure B4Click(Sender: TObject);
    procedure C4Click(Sender: TObject);
    procedure D4Click(Sender: TObject);
    procedure E4Click(Sender: TObject);
    procedure F4Click(Sender: TObject);
    procedure G4Click(Sender: TObject);
    procedure A5Click(Sender: TObject);
    procedure B5Click(Sender: TObject);
    procedure C5Click(Sender: TObject);
    procedure D5Click(Sender: TObject);
    procedure E5Click(Sender: TObject);
    procedure F5Click(Sender: TObject);
    procedure G5Click(Sender: TObject);
    procedure A6Click(Sender: TObject);
    procedure B6Click(Sender: TObject);
    procedure C6Click(Sender: TObject);
    procedure D6Click(Sender: TObject);
    procedure E6Click(Sender: TObject);
    procedure F6Click(Sender: TObject);
    procedure G6Click(Sender: TObject);
    procedure A7Click(Sender: TObject);
    procedure B7Click(Sender: TObject);
    procedure C7Click(Sender: TObject);
    procedure D7Click(Sender: TObject);
    procedure E7Click(Sender: TObject);
    procedure F7Click(Sender: TObject);
    procedure G7Click(Sender: TObject);
    procedure A8Click(Sender: TObject);
    procedure B8Click(Sender: TObject);
    procedure C8Click(Sender: TObject);
    procedure D8Click(Sender: TObject);
    procedure E8Click(Sender: TObject);
    procedure F8Click(Sender: TObject);
    procedure G8Click(Sender: TObject);
    procedure A9Click(Sender: TObject);
    procedure B9Click(Sender: TObject);
    procedure C9Click(Sender: TObject);
    procedure D9Click(Sender: TObject);
    procedure E9Click(Sender: TObject);
    procedure F9Click(Sender: TObject);
    procedure G9Click(Sender: TObject);
    procedure A10Click(Sender: TObject);
    procedure B10Click(Sender: TObject);
    procedure C10Click(Sender: TObject);
    procedure D10Click(Sender: TObject);
    procedure E10Click(Sender: TObject);
    procedure F10Click(Sender: TObject);
    procedure G10Click(Sender: TObject);
    procedure A11Click(Sender: TObject);
    procedure B11Click(Sender: TObject);
    procedure C11Click(Sender: TObject);
    procedure D11Click(Sender: TObject);
    procedure E11Click(Sender: TObject);
    procedure F11Click(Sender: TObject);
    procedure G11Click(Sender: TObject);
    procedure IdTCPServer1Execute(AContext: TIdContext);
    procedure exec(idToExec:String);
    procedure attribCmd(cmd1:String;cmd2:String;cmdT:Integer);
    procedure TimerTimer(Sender: TObject);
    function translateKey(input: String):Byte;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  config :TForm2;
  lastId :String;

  comando: Array[0..76] of String;
  sizeX:Array[0..76] of Integer;
  sizeY:Array[0..76] of Integer;
  url:Array[0..76] of String;
  pad:Array[0..76] of Boolean;
  enable:Array[0..76] of Boolean;

  timeresolution:Integer;
  timerCmd1:Array[0..255] of String;
  timerCmd2:Array[0..255] of String;
  timerCmdTime:Array[0..255] of Integer;

implementation

{$R *.dfm}

procedure TForm1.F2Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='F2';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
  writeToIni;

end;

procedure TForm1.E2Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='E2';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.D2Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='D2';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.C2Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='C2';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.B2Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='B2';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.A2Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='A2';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.G3Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='G3';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.F3Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='F3';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.E3Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='E3';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.D3Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='D3';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Timer.Enabled:=true;
IdTCPServer1.Bindings.Clear;
IdTCPServer1.Bindings.Add.SetBinding(editIP.Text,StrToInt(editPort.Text));
IdTCPServer1.Active:=true;
end;

procedure TForm1.C3Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='C3';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.B3Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='B3';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.A3Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='A3';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.G4Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='G4';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.F4Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='F4';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.E4Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='E4';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.D4Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='D4';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.C4Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='C4';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.B4Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='B4';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.A4Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='A4';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.A1Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='A1';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.G5Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='G5';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.F5Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='F5';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.E5Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='E5';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.D5Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='D5';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.C5Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='C5';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.B5Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='B5';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.A5Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='A5';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.A6Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='A6';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.B6Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='B6';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.C6Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='C6';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.B1Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='B1';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.D6Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='D6';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.E6Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='E6';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.F6Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='F6';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.G6Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='G6';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.G7Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='G7';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.F7Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='F7';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.E7Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='E7';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.D7Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='D7';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.C7Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='C7';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.B7Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='B7';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.C1Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='C1';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.A7Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='A7';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.G8Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='G8';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.F8Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='F8';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.E8Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='E8';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.D8Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='D8';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.C8Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='C8';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.B8Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='B8';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.A8Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='A8';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.G9Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='G9';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.F9Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='F9';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.D1Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='D1';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.E9Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='E9';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.D9Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='D9';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.C9Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='C9';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.B9Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='B9';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.A9Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='A9';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.G10Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='G10';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.F10Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='F10';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.E10Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='E10';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.D10Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='D10';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.C10Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='C10';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.E1Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='E1';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.B10Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='B10';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.A10Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='A10';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.G11Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='G11';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.F11Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='F11';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.E11Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='E11';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.D11Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='D11';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.C11Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='C11';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.B11Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='B11';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.A11Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='A11';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.F1Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='F1';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.G1Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='G1';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.G2Click(Sender: TObject);
begin
config:=TForm2.Create(Form2);
lastId:='G2';
config.UpdateConfForm(lastId);
if config.ShowModal=mrOk then
writeToIni;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
configIni : TIniFile;
i,tempBool: Integer;
begin
timeresolution:=80;
Timer.Interval:=timeresolution;
debug.Text:='';
for i := 0 to 255 do
begin
  timerCmd1[i]:='';
  timerCmd2[i]:='';
  timerCmdTime[i]:=0;
end;
configIni := TIniFile.Create(GetCurrentDir+'\ss.ini');
if not configIni.SectionExists('A1') then
  begin
    //A
   configIni.WriteString('A1','Comando','');
   configIni.WriteInteger('A1','sizeX',1);
   configIni.WriteInteger('A1','sizeY',1);
   configIni.WriteString('A1','url','');
   configIni.WriteInteger('A1','pad',0);
   configIni.WriteInteger('A1','enable',1);

   configIni.WriteString('A2','Comando','');
   configIni.WriteInteger('A2','sizeX',1);
   configIni.WriteInteger('A2','sizeY',1);
   configIni.WriteString('A2','url','');
   configIni.WriteInteger('A2','pad',0);
   configIni.WriteInteger('A2','enable',1);

   configIni.WriteString('A3','Comando','');
   configIni.WriteInteger('A3','sizeX',1);
   configIni.WriteInteger('A3','sizeY',1);
   configIni.WriteString('A3','url','');
   configIni.WriteInteger('A3','pad',0);
   configIni.WriteInteger('A3','enable',1);

   configIni.WriteString('A4','Comando','');
   configIni.WriteInteger('A4','sizeX',1);
   configIni.WriteInteger('A4','sizeY',1);
   configIni.WriteString('A4','url','');
   configIni.WriteInteger('A4','pad',0);
   configIni.WriteInteger('A4','enable',1);

   configIni.WriteString('A5','Comando','');
   configIni.WriteInteger('A5','sizeX',1);
   configIni.WriteInteger('A5','sizeY',1);
   configIni.WriteString('A5','url','');
   configIni.WriteInteger('A5','pad',0);
   configIni.WriteInteger('A5','enable',1);

   configIni.WriteString('A6','Comando','');
   configIni.WriteInteger('A6','sizeX',1);
   configIni.WriteInteger('A6','sizeY',1);
   configIni.WriteString('A6','url','');
   configIni.WriteInteger('A6','pad',0);
   configIni.WriteInteger('A6','enable',1);

   configIni.WriteString('A7','Comando','');
   configIni.WriteInteger('A7','sizeX',1);
   configIni.WriteInteger('A7','sizeY',1);
   configIni.WriteString('A7','url','');
   configIni.WriteInteger('A7','pad',0);
   configIni.WriteInteger('A7','enable',1);

   configIni.WriteString('A8','Comando','');
   configIni.WriteInteger('A8','sizeX',1);
   configIni.WriteInteger('A8','sizeY',1);
   configIni.WriteString('A8','url','');
   configIni.WriteInteger('A8','pad',0);
   configIni.WriteInteger('A8','enable',1);

   configIni.WriteString('A9','Comando','');
   configIni.WriteInteger('A9','sizeX',1);
   configIni.WriteInteger('A9','sizeY',1);
   configIni.WriteString('A9','url','');
   configIni.WriteInteger('A9','pad',0);
   configIni.WriteInteger('A9','enable',1);

   configIni.WriteString('A10','Comando','');
   configIni.WriteInteger('A10','sizeX',1);
   configIni.WriteInteger('A10','sizeY',1);
   configIni.WriteString('A10','url','');
   configIni.WriteInteger('A10','pad',0);
   configIni.WriteInteger('A10','enable',1);

   configIni.WriteString('A11','Comando','');
   configIni.WriteInteger('A11','sizeX',1);
   configIni.WriteInteger('A11','sizeY',1);
   configIni.WriteString('A11','url','');
   configIni.WriteInteger('A11','pad',0);
   configIni.WriteInteger('A11','enable',1);

   //b
   configIni.WriteString('B1','Comando','');
   configIni.WriteInteger('B1','sizeX',1);
   configIni.WriteInteger('B1','sizeY',1);
   configIni.WriteString('B1','url','');
   configIni.WriteInteger('B1','pad',0);
   configIni.WriteInteger('B1','enable',1);

   configIni.WriteString('B2','Comando','');
   configIni.WriteInteger('B2','sizeX',1);
   configIni.WriteInteger('B2','sizeY',1);
   configIni.WriteString('B2','url','');
   configIni.WriteInteger('B2','pad',0);
   configIni.WriteInteger('B2','enable',1);

   configIni.WriteString('B3','Comando','');
   configIni.WriteInteger('B3','sizeX',1);
   configIni.WriteInteger('B3','sizeY',1);
   configIni.WriteString('B3','url','');
   configIni.WriteInteger('B3','pad',0);
   configIni.WriteInteger('B3','enable',1);

   configIni.WriteString('B4','Comando','');
   configIni.WriteInteger('B4','sizeX',1);
   configIni.WriteInteger('B4','sizeY',1);
   configIni.WriteString('B4','url','');
   configIni.WriteInteger('B4','pad',0);
   configIni.WriteInteger('B4','enable',1);

   configIni.WriteString('B5','Comando','');
   configIni.WriteInteger('B5','sizeX',1);
   configIni.WriteInteger('B5','sizeY',1);
   configIni.WriteString('B5','url','');
   configIni.WriteInteger('B5','pad',0);
   configIni.WriteInteger('B5','enable',1);

   configIni.WriteString('B6','Comando','');
   configIni.WriteInteger('B6','sizeX',1);
   configIni.WriteInteger('B6','sizeY',1);
   configIni.WriteString('B6','url','');
   configIni.WriteInteger('B6','pad',0);
   configIni.WriteInteger('B6','enable',1);

   configIni.WriteString('B7','Comando','');
   configIni.WriteInteger('B7','sizeX',1);
   configIni.WriteInteger('B7','sizeY',1);
   configIni.WriteString('B7','url','');
   configIni.WriteInteger('B7','pad',0);
   configIni.WriteInteger('B7','enable',1);

   configIni.WriteString('B8','Comando','');
   configIni.WriteInteger('B8','sizeX',1);
   configIni.WriteInteger('B8','sizeY',1);
   configIni.WriteString('B8','url','');
   configIni.WriteInteger('B8','pad',0);
   configIni.WriteInteger('B8','enable',1);

   configIni.WriteString('B9','Comando','');
   configIni.WriteInteger('B9','sizeX',1);
   configIni.WriteInteger('B9','sizeY',1);
   configIni.WriteString('B9','url','');
   configIni.WriteInteger('B9','pad',0);
   configIni.WriteInteger('B9','enable',1);

   configIni.WriteString('B10','Comando','');
   configIni.WriteInteger('B10','sizeX',1);
   configIni.WriteInteger('B10','sizeY',1);
   configIni.WriteString('B10','url','');
   configIni.WriteInteger('B10','pad',0);
   configIni.WriteInteger('B10','enable',1);

   configIni.WriteString('B11','Comando','');
   configIni.WriteInteger('B11','sizeX',1);
   configIni.WriteInteger('B11','sizeY',1);
   configIni.WriteString('B11','url','');
   configIni.WriteInteger('B11','pad',0);
   configIni.WriteInteger('B11','enable',1);

   //c
   configIni.WriteString('C1','Comando','');
   configIni.WriteInteger('C1','sizeX',1);
   configIni.WriteInteger('C1','sizeY',1);
   configIni.WriteString('C1','url','');
   configIni.WriteInteger('C1','pad',0);
   configIni.WriteInteger('C1','enable',1);

   configIni.WriteString('C2','Comando','');
   configIni.WriteInteger('C2','sizeX',1);
   configIni.WriteInteger('C2','sizeY',1);
   configIni.WriteString('C2','url','');
   configIni.WriteInteger('C2','pad',0);
   configIni.WriteInteger('C2','enable',1);

   configIni.WriteString('C3','Comando','');
   configIni.WriteInteger('C3','sizeX',1);
   configIni.WriteInteger('C3','sizeY',1);
   configIni.WriteString('C3','url','');
   configIni.WriteInteger('C3','pad',0);
   configIni.WriteInteger('C3','enable',1);

   configIni.WriteString('C4','Comando','');
   configIni.WriteInteger('C4','sizeX',1);
   configIni.WriteInteger('C4','sizeY',1);
   configIni.WriteString('C4','url','');
   configIni.WriteInteger('C4','pad',0);
   configIni.WriteInteger('C4','enable',1);

   configIni.WriteString('C5','Comando','');
   configIni.WriteInteger('C5','sizeX',1);
   configIni.WriteInteger('C5','sizeY',1);
   configIni.WriteString('C5','url','');
   configIni.WriteInteger('C5','pad',0);
   configIni.WriteInteger('C5','enable',1);

   configIni.WriteString('C6','Comando','');
   configIni.WriteInteger('C6','sizeX',1);
   configIni.WriteInteger('C6','sizeY',1);
   configIni.WriteString('C6','url','');
   configIni.WriteInteger('C6','pad',0);
   configIni.WriteInteger('C6','enable',1);

   configIni.WriteString('C7','Comando','');
   configIni.WriteInteger('C7','sizeX',1);
   configIni.WriteInteger('C7','sizeY',1);
   configIni.WriteString('C7','url','');
   configIni.WriteInteger('C7','pad',0);
   configIni.WriteInteger('C7','enable',1);

   configIni.WriteString('C8','Comando','');
   configIni.WriteInteger('C8','sizeX',1);
   configIni.WriteInteger('C8','sizeY',1);
   configIni.WriteString('C8','url','');
   configIni.WriteInteger('C8','pad',0);
   configIni.WriteInteger('C8','enable',1);

   configIni.WriteString('C9','Comando','');
   configIni.WriteInteger('C9','sizeX',1);
   configIni.WriteInteger('C9','sizeY',1);
   configIni.WriteString('C9','url','');
   configIni.WriteInteger('C9','pad',0);
   configIni.WriteInteger('C9','enable',1);

   configIni.WriteString('C10','Comando','');
   configIni.WriteInteger('C10','sizeX',1);
   configIni.WriteInteger('C10','sizeY',1);
   configIni.WriteString('C10','url','');
   configIni.WriteInteger('C10','pad',0);
   configIni.WriteInteger('C10','enable',1);

   configIni.WriteString('C11','Comando','');
   configIni.WriteInteger('C11','sizeX',1);
   configIni.WriteInteger('C11','sizeY',1);
   configIni.WriteString('C11','url','');
   configIni.WriteInteger('C11','pad',0);
   configIni.WriteInteger('C11','enable',1);

   //d
   configIni.WriteString('D1','Comando','');
   configIni.WriteInteger('D1','sizeX',1);
   configIni.WriteInteger('D1','sizeY',1);
   configIni.WriteString('D1','url','');
   configIni.WriteInteger('D1','pad',0);
   configIni.WriteInteger('D1','enable',1);

   configIni.WriteString('D2','Comando','');
   configIni.WriteInteger('D2','sizeX',1);
   configIni.WriteInteger('D2','sizeY',1);
   configIni.WriteString('D2','url','');
   configIni.WriteInteger('D2','pad',0);
   configIni.WriteInteger('D2','enable',1);

   configIni.WriteString('D3','Comando','');
   configIni.WriteInteger('D3','sizeX',1);
   configIni.WriteInteger('D3','sizeY',1);
   configIni.WriteString('D3','url','');
   configIni.WriteInteger('D3','pad',0);
   configIni.WriteInteger('D3','enable',1);

   configIni.WriteString('D4','Comando','');
   configIni.WriteInteger('D4','sizeX',1);
   configIni.WriteInteger('D4','sizeY',1);
   configIni.WriteString('D4','url','');
   configIni.WriteInteger('D4','pad',0);
   configIni.WriteInteger('D4','enable',1);

   configIni.WriteString('D5','Comando','');
   configIni.WriteInteger('D5','sizeX',1);
   configIni.WriteInteger('D5','sizeY',1);
   configIni.WriteString('D5','url','');
   configIni.WriteInteger('D5','pad',0);
   configIni.WriteInteger('D5','enable',1);

   configIni.WriteString('D6','Comando','');
   configIni.WriteInteger('D6','sizeX',1);
   configIni.WriteInteger('D6','sizeY',1);
   configIni.WriteString('D6','url','');
   configIni.WriteInteger('D6','pad',0);
   configIni.WriteInteger('D6','enable',1);

   configIni.WriteString('D7','Comando','');
   configIni.WriteInteger('D7','sizeX',1);
   configIni.WriteInteger('D7','sizeY',1);
   configIni.WriteString('D7','url','');
   configIni.WriteInteger('D7','pad',0);
   configIni.WriteInteger('D7','enable',1);

   configIni.WriteString('D8','Comando','');
   configIni.WriteInteger('D8','sizeX',1);
   configIni.WriteInteger('D8','sizeY',1);
   configIni.WriteString('D8','url','');
   configIni.WriteInteger('D8','pad',0);
   configIni.WriteInteger('D8','enable',1);

   configIni.WriteString('D9','Comando','');
   configIni.WriteInteger('D9','sizeX',1);
   configIni.WriteInteger('D9','sizeY',1);
   configIni.WriteString('D9','url','');
   configIni.WriteInteger('D9','pad',0);
   configIni.WriteInteger('D9','enable',1);

   configIni.WriteString('D10','Comando','');
   configIni.WriteInteger('D10','sizeX',1);
   configIni.WriteInteger('D10','sizeY',1);
   configIni.WriteString('D10','url','');
   configIni.WriteInteger('D10','pad',0);
   configIni.WriteInteger('D10','enable',1);

   configIni.WriteString('D11','Comando','');
   configIni.WriteInteger('D11','sizeX',1);
   configIni.WriteInteger('D11','sizeY',1);
   configIni.WriteString('D11','url','');
   configIni.WriteInteger('D11','pad',0);
   configIni.WriteInteger('D11','enable',1);
   //e
   configIni.WriteString('E1','Eomando','');
   configIni.WriteInteger('E1','sizeX',1);
   configIni.WriteInteger('E1','sizeY',1);
   configIni.WriteString('E1','url','');
   configIni.WriteInteger('E1','pad',0);
   configIni.WriteInteger('E1','enable',1);

   configIni.WriteString('E2','Eomando','');
   configIni.WriteInteger('E2','sizeX',1);
   configIni.WriteInteger('E2','sizeY',1);
   configIni.WriteString('E2','url','');
   configIni.WriteInteger('E2','pad',0);
   configIni.WriteInteger('E2','enable',1);

   configIni.WriteString('E3','Eomando','');
   configIni.WriteInteger('E3','sizeX',1);
   configIni.WriteInteger('E3','sizeY',1);
   configIni.WriteString('E3','url','');
   configIni.WriteInteger('E3','pad',0);
   configIni.WriteInteger('E3','enable',1);

   configIni.WriteString('E4','Eomando','');
   configIni.WriteInteger('E4','sizeX',1);
   configIni.WriteInteger('E4','sizeY',1);
   configIni.WriteString('E4','url','');
   configIni.WriteInteger('E4','pad',0);
   configIni.WriteInteger('E4','enable',1);

   configIni.WriteString('E5','Eomando','');
   configIni.WriteInteger('E5','sizeX',1);
   configIni.WriteInteger('E5','sizeY',1);
   configIni.WriteString('E5','url','');
   configIni.WriteInteger('E5','pad',0);
   configIni.WriteInteger('E5','enable',1);

   configIni.WriteInteger('E6','sizeX',1);
   configIni.WriteInteger('E6','sizeY',1);
   configIni.WriteString('E6','url','');
   configIni.WriteInteger('E6','pad',0);
   configIni.WriteInteger('E6','enable',1);

   configIni.WriteInteger('E7','sizeX',1);
   configIni.WriteInteger('E7','sizeY',1);
   configIni.WriteString('E7','url','');
   configIni.WriteInteger('E7','pad',0);
   configIni.WriteInteger('E7','enable',1);

   configIni.WriteString('E8','Eomando','');
   configIni.WriteInteger('E8','sizeX',1);
   configIni.WriteInteger('E8','sizeY',1);
   configIni.WriteString('E8','url','');
   configIni.WriteInteger('E8','pad',0);
   configIni.WriteInteger('E8','enable',1);

   configIni.WriteString('E9','Eomando','');
   configIni.WriteInteger('E9','sizeX',1);
   configIni.WriteInteger('E9','sizeY',1);
   configIni.WriteString('E9','url','');
   configIni.WriteInteger('E9','pad',0);
   configIni.WriteInteger('E9','enable',1);

   configIni.WriteString('E10','Eomando','');
   configIni.WriteInteger('E10','sizeX',1);
   configIni.WriteInteger('E10','sizeY',1);
   configIni.WriteString('E10','url','');
   configIni.WriteInteger('E10','pad',0);
   configIni.WriteInteger('E10','enable',1);

   configIni.WriteString('E11','Eomando','');
   configIni.WriteInteger('E11','sizeX',1);
   configIni.WriteInteger('E11','sizeY',1);
   configIni.WriteString('E11','url','');
   configIni.WriteInteger('E11','pad',0);
   configIni.WriteInteger('E11','enable',1);
   //F
   configIni.WriteString('F1','Comando','');
   configIni.WriteInteger('F1','sizeX',1);
   configIni.WriteInteger('F1','sizeY',1);
   configIni.WriteString('F1','url','');
   configIni.WriteInteger('F1','pad',0);
   configIni.WriteInteger('F1','enable',1);

   configIni.WriteString('F2','Comando','');
   configIni.WriteInteger('F2','sizeX',1);
   configIni.WriteInteger('F2','sizeY',1);
   configIni.WriteString('F2','url','');
   configIni.WriteInteger('F2','pad',0);
   configIni.WriteInteger('F2','enable',1);

   configIni.WriteString('F3','Comando','');
   configIni.WriteInteger('F3','sizeX',1);
   configIni.WriteInteger('F3','sizeY',1);
   configIni.WriteString('F3','url','');
   configIni.WriteInteger('F3','pad',0);
   configIni.WriteInteger('F3','enable',1);

   configIni.WriteString('F4','Comando','');
   configIni.WriteInteger('F4','sizeX',1);
   configIni.WriteInteger('F4','sizeY',1);
   configIni.WriteString('F4','url','');
   configIni.WriteInteger('F4','pad',0);
   configIni.WriteInteger('F4','enable',1);

   configIni.WriteString('F5','Comando','');
   configIni.WriteInteger('F5','sizeX',1);
   configIni.WriteInteger('F5','sizeY',1);
   configIni.WriteString('F5','url','');
   configIni.WriteInteger('F5','pad',0);
   configIni.WriteInteger('F5','enable',1);

   configIni.WriteString('F6','Comando','');
   configIni.WriteInteger('F6','sizeX',1);
   configIni.WriteInteger('F6','sizeY',1);
   configIni.WriteString('F6','url','');
   configIni.WriteInteger('F6','pad',0);
   configIni.WriteInteger('F6','Enable',1);

   configIni.WriteString('F7','Comando','');
   configIni.WriteInteger('F7','sizeX',1);
   configIni.WriteInteger('F7','sizeY',1);
   configIni.WriteString('F7','url','');
   configIni.WriteInteger('F7','pad',0);
   configIni.WriteInteger('F7','enable',1);

   configIni.WriteString('F8','Comando','');
   configIni.WriteInteger('F8','sizeX',1);
   configIni.WriteInteger('F8','sizeY',1);
   configIni.WriteString('F8','url','');
   configIni.WriteInteger('F8','pad',0);
   configIni.WriteInteger('F8','enable',1);

   configIni.WriteString('F9','Comando','');
   configIni.WriteInteger('F9','sizeX',1);
   configIni.WriteInteger('F9','sizeY',1);
   configIni.WriteString('F9','url','');
   configIni.WriteInteger('F9','pad',0);
   configIni.WriteInteger('F9','enable',1);

   configIni.WriteString('F10','Comando','');
   configIni.WriteInteger('F10','sizeX',1);
   configIni.WriteInteger('F10','sizeY',1);
   configIni.WriteString('F10','url','');
   configIni.WriteInteger('F10','pad',0);
   configIni.WriteInteger('F10','enable',1);

   configIni.WriteString('F11','Comando','');
   configIni.WriteInteger('F11','sizeX',1);
   configIni.WriteInteger('F11','sizeY',1);
   configIni.WriteString('F11','url','');
   configIni.WriteInteger('F11','pad',0);
   configIni.WriteInteger('F11','enable',1);
   //g
   configIni.WriteString('G1','Comando','');
   configIni.WriteInteger('G1','sizeX',1);
   configIni.WriteInteger('G1','sizeY',1);
   configIni.WriteString('G1','url','');
   configIni.WriteInteger('G1','pad',0);
   configIni.WriteInteger('G1','enable',1);

   configIni.WriteString('G2','Comando','');
   configIni.WriteInteger('G2','sizeX',1);
   configIni.WriteInteger('G2','sizeY',1);
   configIni.WriteString('G2','url','');
   configIni.WriteInteger('G2','pad',0);
   configIni.WriteInteger('G2','enable',1);

   configIni.WriteString('G3','Comando','');
   configIni.WriteInteger('G3','sizeX',1);
   configIni.WriteInteger('G3','sizeY',1);
   configIni.WriteString('G3','url','');
   configIni.WriteInteger('G3','pad',0);
   configIni.WriteInteger('G3','enable',1);

   configIni.WriteString('G4','Comando','');
   configIni.WriteInteger('G4','sizeX',1);
   configIni.WriteInteger('G4','sizeY',1);
   configIni.WriteString('G4','url','');
   configIni.WriteInteger('G4','pad',0);
   configIni.WriteInteger('G4','enable',1);

   configIni.WriteString('G5','Comando','');
   configIni.WriteInteger('G5','sizeX',1);
   configIni.WriteInteger('G5','sizeY',1);
   configIni.WriteString('G5','url','');
   configIni.WriteInteger('G5','pad',0);
   configIni.WriteInteger('G5','enable',1);

   configIni.WriteString('G6','Comando','');
   configIni.WriteInteger('G6','sizeX',1);
   configIni.WriteInteger('G6','sizeY',1);
   configIni.WriteString('G6','url','');
   configIni.WriteInteger('G6','pad',0);
   configIni.WriteInteger('G6','enable',1);

   configIni.WriteString('G7','Comando','');
   configIni.WriteInteger('G7','sizeX',1);
   configIni.WriteInteger('G7','sizeY',1);
   configIni.WriteString('G7','url','');
   configIni.WriteInteger('G7','pad',0);
   configIni.WriteInteger('G7','enable',1);

   configIni.WriteString('G8','Comando','');
   configIni.WriteInteger('G8','sizeX',1);
   configIni.WriteInteger('G8','sizeY',1);
   configIni.WriteString('G8','url','');
   configIni.WriteInteger('G8','pad',0);
   configIni.WriteInteger('G8','enable',1);

   configIni.WriteString('G9','Comando','');
   configIni.WriteInteger('G9','sizeX',1);
   configIni.WriteInteger('G9','sizeY',1);
   configIni.WriteString('G9','url','');
   configIni.WriteInteger('G9','pad',0);
   configIni.WriteInteger('G9','enable',1);

   configIni.WriteString('G10','Comando','');
   configIni.WriteInteger('G10','sizeX',1);
   configIni.WriteInteger('G10','sizeY',1);
   configIni.WriteString('G10','url','');
   configIni.WriteInteger('G10','pad',0);
   configIni.WriteInteger('G10','enable',1);

   configIni.WriteString('G11','Comando','');
   configIni.WriteInteger('G11','sizeX',1);
   configIni.WriteInteger('G11','sizeY',1);
   configIni.WriteString('G11','url','');
   configIni.WriteInteger('G11','pad',0);
   configIni.WriteInteger('G11','enable',1);
  end;

for i := 0 to 10 do
begin
  comando[i]:=configIni.ReadString('A'+(1+i).ToString,'Comando',comando[i]);
  sizeX[i]:=configIni.ReadInteger('A'+(1+i).ToString,'sizeX',sizeX[i]);
  sizeY[i]:=configIni.ReadInteger('A'+(1+i).ToString,'sizeY',sizeY[i]);
  url[i]:=configIni.ReadString('A'+(1+i).ToString,'url',url[i]);
  tempBool:=configIni.ReadInteger('A'+(1+i).ToString,'pad',tempBool);
  pad[i]:=tempBool.ToBoolean;
  tempBool:=configIni.ReadInteger('A'+(1+i).ToString,'enable',tempBool);
  enable[i]:=tempBool.ToBoolean;
end;

for i := 0 to 10 do
begin
  comando[i+11]:=configIni.ReadString('B'+(1+i).ToString,'Comando',comando[i+11]);
  sizeX[i+11]:=configIni.ReadInteger('B'+(1+i).ToString,'sizeX',sizeX[i+11]);
  sizeY[i+11]:=configIni.ReadInteger('B'+(1+i).ToString,'sizeY',sizeY[i+11]);
  url[i+11]:=configIni.ReadString('B'+(1+i).ToString,'url',url[i+11]);
  tempBool:=configIni.ReadInteger('B'+(1+i).ToString,'pad',tempBool);
  pad[i+11]:=tempBool.ToBoolean;
  tempBool:=configIni.ReadInteger('B'+(1+i).ToString,'enable',tempBool);
  enable[i+11]:=tempBool.ToBoolean;
end;

for i := 0 to 10 do
begin
  comando[i+22]:=configIni.ReadString('C'+(1+i).ToString,'Comando',comando[i+22]);
  sizeX[i+22]:=configIni.ReadInteger('C'+(1+i).ToString,'sizeX',sizeX[i+22]);
  sizeY[i+22]:=configIni.ReadInteger('C'+(1+i).ToString,'sizeY',sizeY[i+22]);
  url[i+22]:=configIni.ReadString('C'+(1+i).ToString,'url',url[i+22]);
  tempBool:=configIni.ReadInteger('C'+(1+i).ToString,'pad',tempBool);
  pad[i+22]:=tempBool.ToBoolean;
  tempBool:=configIni.ReadInteger('C'+(1+i).ToString,'enable',tempBool);
  enable[i+22]:=tempBool.ToBoolean;
end;

for i := 0 to 10 do
begin
  comando[i+33]:=configIni.ReadString('D'+(1+i).ToString,'Comando',comando[i+33]);
  sizeX[i+33]:=configIni.ReadInteger('D'+(1+i).ToString,'sizeX',sizeX[i+33]);
  sizeY[i+33]:=configIni.ReadInteger('D'+(1+i).ToString,'sizeY',sizeY[i+33]);
  url[i+33]:=configIni.ReadString('D'+(1+i).ToString,'url',url[i+33]);
  tempBool:=configIni.ReadInteger('D'+(1+i).ToString,'pad',tempBool);
  pad[i+33]:=tempBool.ToBoolean;
  tempBool:=configIni.ReadInteger('D'+(1+i).ToString,'enable',tempBool);
  enable[i+33]:=tempBool.ToBoolean;
end;

for i := 0 to 10 do
begin
  comando[i+44]:=configIni.ReadString('E'+(1+i).ToString,'Comando',comando[i+44]);
  sizeX[i+44]:=configIni.ReadInteger('E'+(1+i).ToString,'sizeX',sizeX[i+44]);
  sizeY[i+44]:=configIni.ReadInteger('E'+(1+i).ToString,'sizeY',sizeY[i+44]);
  url[i+44]:=configIni.ReadString('E'+(1+i).ToString,'url',url[i+44]);
  tempBool:=configIni.ReadInteger('E'+(1+i).ToString,'pad',tempBool);
  pad[i+44]:=tempBool.ToBoolean;
  tempBool:=configIni.ReadInteger('E'+(1+i).ToString,'enable',tempBool);
  enable[i+44]:=tempBool.ToBoolean;
end;
for i := 0 to 10 do
begin
  comando[i+55]:=configIni.ReadString('F'+(1+i).ToString,'Comando',comando[i+55]);
  sizeX[i+55]:=configIni.ReadInteger('F'+(1+i).ToString,'sizeX',sizeX[i+55]);
  sizeY[i+55]:=configIni.ReadInteger('F'+(1+i).ToString,'sizeY',sizeY[i+55]);
  url[i+55]:=configIni.ReadString('F'+(1+i).ToString,'url',url[i+55]);
  tempBool:=configIni.ReadInteger('F'+(1+i).ToString,'pad',tempBool);
  pad[i+55]:=tempBool.ToBoolean;
  tempBool:=configIni.ReadInteger('F'+(1+i).ToString,'enable',tempBool);
  enable[i+55]:=tempBool.ToBoolean;
end;
for i := 0 to 10 do
begin
  comando[i+66]:=configIni.ReadString('G'+(1+i).ToString,'Comando',comando[i+66]);
  sizeX[i+66]:=configIni.ReadInteger('G'+(1+i).ToString,'sizeX',sizeX[i+66]);
  sizeY[i+66]:=configIni.ReadInteger('G'+(1+i).ToString,'sizeY',sizeY[i+66]);
  url[i+55]:=configIni.ReadString('G'+(1+i).ToString,'url',url[i+66]);
  tempBool:=configIni.ReadInteger('G'+(1+i).ToString,'pad',tempBool);
  pad[i+66]:=tempBool.ToBoolean;
  tempBool:=configIni.ReadInteger('G'+(1+i).ToString,'enable',tempBool);
  enable[i+66]:=tempBool.ToBoolean;
end;
for i := 0 to 76 do
  if enable[i]=false then
   TButton(FindComponent(getId(i))).Enabled:=false;

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

procedure TForm1.IdTCPServer1Execute(AContext: TIdContext);
var
i:Integer;
verdade:boolean;
Stream:TFileStream;
fromClient:String;
begin
{
cliente:i'm connected soon of a bitch
server:sizeX, sizeY, enabled, pad, images
cliente:recebi
..
cliente:comandos
..
}
for i := 0 to 76 do
begin
  AContext.Connection.Socket.WriteLn(IntToStr(sizeX[i]));
  AContext.Connection.Socket.WriteLn(IntToStr(sizeY[i]));
  AContext.Connection.Socket.WriteLn(IntToStr(enable[i].ToInteger));
  AContext.Connection.Socket.WriteLn(IntToStr(pad[i].ToInteger));
  if url[i]<>'' then
  begin
    AContext.Connection.Socket.LargeStream:=true;
    AContext.Connection.Socket.WriteLn('image:');
    Stream := TFileStream.Create(url[i], fmCreate); //fmOpenRead
    AContext.Connection.Socket.Write(Stream,0,true);
  end else
    AContext.Connection.Socket.WriteLn('non:');
end;
if AContext.Connection.Socket.ReadLn='layout carregado' then
begin
  verdade:=true;
  while verdade do
  begin
    fromClient:=AContext.Connection.Socket.ReadLn;
    exec(fromClient);
    debug.Text:=debug.Text+' '+fromClient;
  end;
end;
end;


function TForm1.translateKey(input: String):Byte;
begin
  Result:=30;
  case input[1] of
  'u': Result:=VK_UP;
  'd': Result:=VK_DOWN;
  'l': Result:=VK_LEFT;
  'r': Result:=VK_RIGHT;
  '0': Result:=$30;
  '1': Result:=$31;
  '2': Result:=$32;
  '3': Result:=$33;
  '4': Result:=$34;
  '5': Result:=$35;
  '6': Result:=$36;
  '7': Result:=$37;
  '8': Result:=$38;
  '9': Result:=$39;
  'A': Result:=$41;
  'B': Result:=$42;
  'C': Result:=$43;
  'D': Result:=$44;
  'E': Result:=$45;
  'F': Result:=$46;
  'G': Result:=$47;
  'H': Result:=$48;
  'I': Result:=$49;
  'J': Result:=$4A;
  'K': Result:=$4B;
  'L': Result:=$4C;
  'M': Result:=$4D;
  'N': Result:=$4E;
  'O': Result:=$4F;
  'P': Result:=$50;
  'Q': Result:=$51;
  'R': Result:=$52;
  'S': Result:=$53;
  'T': Result:=$54;
  'U': Result:=$55;
  'V': Result:=$56;
  'W': Result:=$57;
  'X': Result:=$58;
  'Y': Result:=$59;
  'Z': Result:=$5A;
  'b': Result:=VK_SPACE;
  'e': Result:=VK_RETURN;
  'c': Result:=VK_CONTROL;
  's': Result:=VK_SHIFT;
  'a': Result:=VK_MENU;
  end;
end;
procedure TForm1.TimerTimer(Sender: TObject);
var
i:Integer;
begin
for i := 0 to 255 do
begin
    if timerCmd1[i]<>'' then
    begin
    if timerCmdTime[i]<>0 then
      timerCmdTime[i]:=timerCmdTime[i]-1;
      if timerCmdTime[i]=0 then
      begin
        if timerCmd2[i]<>'' then
        begin
        keybd_event(translateKey(timerCmd2[i]), 0, KEYEVENTF_EXTENDEDKEY or 0, 0); //pressiona
        end;
        //keybd_event(translateKey(timerCmd1[i]), 0, KEYEVENTF_EXTENDEDKEY or 0, 0); //pressiona
        //keybd_event(translateKey(timerCmd1[i]), 0, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0); //libera
        keybd_event(translateKey(timerCmd1[i]), 0, 0, 0); //pressiona
        keybd_event(translateKey(timerCmd1[i]), 0, KEYEVENTF_KEYUP, 0); //pressiona
        if timerCmd2[i]<>'' then
        begin
        keybd_event(translateKey(timerCmd2[i]), 0, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0); //libera
        end;
        timerCmd1[i]:='';
        timerCmd2[i]:='';
        timerCmdTime[i]:=0;
      end;
    end;
end;
end;

procedure TForm1.attribCmd(cmd1:String;cmd2:String;cmdT:Integer);
var
i:Integer;
find:Boolean;
begin
  for i := 0 to 255 do
    if timerCmd1[i]='' then
    begin
      timerCmd1[i]:=cmd1;
      timerCmd2[i]:=cmd2;
      timerCmdTime[i]:=cmdT;
      find:=true;
      break;
    end;
    if not find then
    ShowMessage('Dynamic Timer: array insuficiente');
end;
procedure TForm1.exec(idToExec:String);
var
idx,i,j,lastPlus,timeToNxt:Integer;
tecla,tecla2,tempTime:String;
number,resetValues,first:boolean;
begin
idx:=0;
lastPlus:=1;
resetValues:=false;
first:=true;
timeToNxt:=0;
tecla:='';
tecla2:='';
tempTime:='';
 case idToExec[1] of
  'A': idx:=0;
  'B': idx:=11;
  'C': idx:=22;
  'D': idx:=33;
  'E': idx:=44;
  'F': idx:=55;
  'G': idx:=66;
  end;
  if (idToExec[3]='0') or (idToExec[3]='1') then
  begin
      idx := idx+StrToInt(idToExec[2]+idToExec[3])-1;
  end else
      idx := idx+StrToInt(idToExec[2])-1;
  for i := 1 to comando[idx].Length+1 do
  begin
    if resetValues then
    begin
    attribCmd(tecla,tecla2,timeToNxt);
    tecla:='';
    tecla2:='';
    tempTime:='';
    timeToNxt:=0;
    number:=true;
    resetValues:=false;
    end;
   if (comando[idx][i]='+') or (comando[idx][i]='!') then
   begin
   if first then
   begin
    if (comando[idx][i+1]='c') or (comando[idx][i+1]='s') or (comando[idx][i+1]='a') then
    begin
      for j := lastPlus to i-1 do
          tecla2:=tecla2+comando[idx][j];
    end else
    begin
      for j := lastPlus to i-1 do
        tecla:=tecla+comando[idx][j];
      resetValues:=true;
      first:=false;
    end;
   end else
   begin
    if number then
    begin
    for j := lastPlus to i-1 do
      tempTime:=tempTime+comando[idx][j];
    number:=false;
    if tempTime='' then
    tempTime:='0';
    timeToNxt:=StrToInt(tempTime);
    end else
     if (comando[idx][i+1]='c') or (comando[idx][i+1]='s') or (comando[idx][i+1]='a') then
      begin
        for j := lastPlus to i-1 do
            tecla2:=tecla2+comando[idx][j];;
      end else
      begin
        for j := lastPlus to i-1 do
          tecla:=tecla+comando[idx][j];
        resetValues:=true;
      end;
    end;
    lastPlus:=i+1;
    end;
  end;
end;

procedure TForm1.writeToIni();
var
configIni : TIniFile;
i,j,tempInt:Integer;
VlwPaiObj: TButton;
begin
configIni := TIniFile.Create(GetCurrentDir+'\ss.ini');
//desabilitar botoes de acordo com o tamanho
  case lastId[1] of
  'A': index:=0;
  'B': index:=11;
  'C': index:=22;
  'D': index:=33;
  'E': index:=44;
  'F': index:=55;
  'G': index:=66;
  end;

  if (lastId[3]='0') or (lastId[3]='1') then
  begin
      tempInt := index+StrToInt(lastId[2]+lastId[3])-1;
  end else
      tempInt := index+StrToInt(lastId[2])-1;

  if sizeX[tempInt]<>1 then
  for i := 1 to sizeX[tempInt]-1 do
  begin
   enable[tempInt+i*11]:=false;
   VlwPaiObj:=TButton(FindComponent(getId(tempInt+i*11)));
   VlwPaiObj.Enabled:=false;
    if sizeY[tempInt]<>1 then
    for j := 1 to sizeY[tempInt]-1 do
    begin
     enable[tempInt+i*11+j]:=false;
     VlwPaiObj:=TButton(FindComponent(getId(tempInt+i*11+j)));
     VlwPaiObj.Enabled:=false;
    end;
   end;
   if sizeY[tempInt]<>1 then
    for j := 1 to sizeY[tempInt]-1 do
    begin
     enable[tempInt+j]:=false;
     VlwPaiObj:=TButton(FindComponent(getId(tempInt+j)));
     VlwPaiObj.Enabled:=false;
    end;



for i := 0 to 10 do
begin
  configIni.WriteString('A'+(1+i).ToString,'Comando',comando[i]);
  configIni.WriteInteger('A'+(1+i).ToString,'sizeX',sizeX[i]);
  configIni.WriteInteger('A'+(1+i).ToString,'sizeY',sizeY[i]);
  configIni.WriteString('A'+(1+i).ToString,'url',url[i]);
  configIni.WriteInteger('A'+(1+i).ToString,'pad',pad[i].ToInteger);
  configIni.WriteInteger('A'+(1+i).ToString,'enable',enable[i].ToInteger);
end;

for i := 0 to 10 do
begin
  configIni.WriteString('B'+(1+i).ToString,'Comando',comando[i+11]);
  configIni.WriteInteger('B'+(1+i).ToString,'sizeX',sizeX[i+11]);
  configIni.WriteInteger('B'+(1+i).ToString,'sizeY',sizeY[i+11]);
  configIni.WriteString('B'+(1+i).ToString,'url',url[i+11]);
  configIni.WriteInteger('B'+(1+i).ToString,'pad',pad[i+11].ToInteger);
  configIni.WriteInteger('B'+(1+i).ToString,'enable',enable[i+11].ToInteger);
end;

for i := 0 to 10 do
begin
  configIni.WriteString('C'+(1+i).ToString,'Comando',comando[i+22]);
  configIni.WriteInteger('C'+(1+i).ToString,'sizeX',sizeX[i+22]);
  configIni.WriteInteger('C'+(1+i).ToString,'sizeY',sizeY[i+22]);
  configIni.WriteString('C'+(1+i).ToString,'url',url[i+22]);
  configIni.WriteInteger('C'+(1+i).ToString,'pad',pad[i+22].ToInteger);
  configIni.WriteInteger('C'+(1+i).ToString,'enable',enable[i+22].ToInteger);
end;

for i := 0 to 10 do
begin
  configIni.WriteString('D'+(1+i).ToString,'Comando',comando[i+33]);
  configIni.WriteInteger('D'+(1+i).ToString,'sizeX',sizeX[i+33]);
  configIni.WriteInteger('D'+(1+i).ToString,'sizeY',sizeY[i+33]);
  configIni.WriteString('D'+(1+i).ToString,'url',url[i+33]);
  configIni.WriteInteger('D'+(1+i).ToString,'pad',pad[i+33].ToInteger);
  configIni.WriteInteger('D'+(1+i).ToString,'enable',enable[i+33].ToInteger);
end;

for i := 0 to 10 do
begin
  configIni.WriteString('E'+(1+i).ToString,'Comando',comando[i+44]);
  configIni.WriteInteger('E'+(1+i).ToString,'sizeX',sizeX[i+44]);
  configIni.WriteInteger('E'+(1+i).ToString,'sizeY',sizeY[i+44]);
  configIni.WriteString('E'+(1+i).ToString,'url',url[i+44]);
  configIni.WriteInteger('E'+(1+i).ToString,'pad',pad[i+44].ToInteger);
  configIni.WriteInteger('E'+(1+i).ToString,'enable',enable[i+44].ToInteger);
end;
for i := 0 to 10 do
begin
  configIni.WriteString('F'+(1+i).ToString,'Comando',comando[i+55]);
  configIni.WriteInteger('F'+(1+i).ToString,'sizeX',sizeX[i+55]);
  configIni.WriteInteger('F'+(1+i).ToString,'sizeY',sizeY[i+55]);
  configIni.WriteString('F'+(1+i).ToString,'url',url[i+55]);
  configIni.WriteInteger('F'+(1+i).ToString,'pad',pad[i+55].ToInteger);
  configIni.WriteInteger('F'+(1+i).ToString,'enable',enable[i+55].ToInteger);
end;
for i := 0 to 10 do
begin
  configIni.WriteString('G'+(1+i).ToString,'Comando',comando[i+66]);
  configIni.WriteInteger('G'+(1+i).ToString,'sizeX',sizeX[i+66]);
  configIni.WriteInteger('G'+(1+i).ToString,'sizeY',sizeY[i+66]);
  configIni.WriteString('G'+(1+i).ToString,'url',url[i+66]);
  configIni.WriteInteger('G'+(1+i).ToString,'pad',pad[i+66].ToInteger);
  configIni.WriteInteger('G'+(1+i).ToString,'enable',enable[i+66].ToInteger);
end;
end;

end.
