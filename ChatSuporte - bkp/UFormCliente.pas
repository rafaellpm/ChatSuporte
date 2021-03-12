unit UFormCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UMsgPai, Vcl.StdCtrls, Vcl.ExtCtrls,
  dxGDIPlusClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmCliente = class(TFrmPaiMsg)
    procedure enviamensagem;
    procedure retornamensagem;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure gerarchamado;
    procedure FormCreate(Sender: TObject);


  private
    var codigo: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;
  sqlstr : string;


implementation

{$R *.dfm}

uses UConexao;

procedure TFrmCliente.Button1Click(Sender: TObject);
begin
  inherited;
  Memo1.Lines.Add('Você ' + DateTimeToStr(now) + ': ' + EdtMsg.Text);
  enviamensagem;
  EdtMsg.Text := '';
end;

procedure TFrmCliente.enviamensagem;
begin
  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('INSERT INTO CHATSUPORTE');
  FDQuery1.SQL.Add('(USUARIO_ANALISTA, MENSAGEM, DATA_HORA, COD_EMPRESA, VISUALIZADO_CLI, ID_CHAMADO)');
  FDQuery1.SQL.Add('VALUES ');
  FDQuery1.SQL.Add('(:USUARIO_ANALISTA, :MENSAGEM, :DATA_HORA, :COD_EMPRESA, :VISUALIZADO_CLI, :ID_CHAMADO)');
  FDQuery1.ParamByName('USUARIO_ANALISTA').Value := 'CLIENTE';
  FDQuery1.ParamByName('MENSAGEM').Value := EdtMsg.Text;
  FDQuery1.ParamByName('DATA_HORA').Value := now;
  FDQuery1.ParamByName('COD_EMPRESA').Value := '15';
  FDQuery1.ParamByName('VISUALIZADO_CLI').Value := '0';
  FDQuery1.ParamByName('ID_CHAMADO').Value := '10';


  FDQuery1.ExecSQL;

end;


procedure TFrmCliente.FormCreate(Sender: TObject);
begin
  inherited;
  gerarchamado;
end;

procedure TFrmCliente.gerarchamado;
begin
  sqlstr  := 'SELECT MAX(ID_CHAMADO)+1 AS CODIGO FROM CHATSUPORTE';
  if not ConsultaMySql(FDQuery1,sqlstr) then
    LbNrChamado.Caption  := '1'
  else
    LbNrChamado.Caption := FDQuery1.FieldByName('codigo').AsString;
end;

procedure TFrmCliente.retornamensagem;
var cod_chamado : string ;
    texto : string;
    usuario : string;
    datahora : string;
    mensagem : string;
    id_msg : string;

begin
  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  sqlstr := 'select * from chatsuporte where visualizado_sup <> 1 ';
  if ConsultaMySql(FDQuery1, sqlstr) = true then
  begin

    usuario   := FDQuery1.FieldByName('USUARIO_ANALISTA').asstring;
    datahora  := FDQuery1.FieldByName('DATA_HORA').asstring;
    mensagem  := FDQuery1.FieldByName('MENSAGEM').asstring;
    texto     := usuario + ' ' + datahora + ' : ' + mensagem;
    id_msg    := FDQuery1.FieldByName('ID_MSG').asstring;
    Memo1.Lines.Add(texto);

    FDQuery1.Close;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('UPDATE CHATSUPORTE SET VISUALIZADO_SUP = 1 WHERE VISUALIZADO_SUP = 0');
    FDQuery1.ExecSQL;
    FDQuery1.Close;

  end;

end;


procedure TFrmCliente.Timer1Timer(Sender: TObject);
begin
  inherited;
  retornamensagem;
end;


end.


