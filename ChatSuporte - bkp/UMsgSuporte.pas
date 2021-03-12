unit UMsgSuporte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UMsgPai, Vcl.StdCtrls, Vcl.ExtCtrls,
  dxGDIPlusClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmSuporte = class(TFrmPaiMsg)
    procedure retornamensagem;
    procedure enviamensagem;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSuporte: TFrmSuporte;

implementation

{$R *.dfm}

uses UConexao;


{ TFrmSuporte }

procedure TFrmSuporte.Button1Click(Sender: TObject);
begin
  inherited;
  Memo1.Lines.Add('Você ' + DateTimeToStr(now) + ': ' + EdtMsg.Text);
  enviamensagem;
  EdtMsg.Text := '';
end;

procedure TFrmSuporte.enviamensagem;
begin
  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('INSERT INTO CHATSUPORTE');
  FDQuery1.SQL.Add('(USUARIO_ANALISTA, MENSAGEM, DATA_HORA, COD_EMPRESA, VISUALIZADO_SUP, ID_CHAMADO)');
  FDQuery1.SQL.Add('VALUES ');
  FDQuery1.SQL.Add('(:USUARIO_ANALISTA, :MENSAGEM, :DATA_HORA, :COD_EMPRESA, :VISUALIZADO_SUP, :ID_CHAMADO)');
  FDQuery1.ParamByName('USUARIO_ANALISTA').Value := 'SUPORTE';
  FDQuery1.ParamByName('MENSAGEM').Value := EdtMsg.Text;
  FDQuery1.ParamByName('DATA_HORA').Value := now;
  FDQuery1.ParamByName('COD_EMPRESA').Value := '15';
  FDQuery1.ParamByName('VISUALIZADO_SUP').Value := '0';
  FDQuery1.ParamByName('ID_CHAMADO').Value := '10';


  FDQuery1.ExecSQL;

end;

procedure TFrmSuporte.retornamensagem;
var cod_chamado : string ;
    texto : string;
    usuario : string;
    datahora : string;
    mensagem : string;

begin
  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  sqlstr := 'select * from chatsuporte where visualizado_cli <> 1';
  if ConsultaMySql(FDQuery1, sqlstr) = true then
  begin

    usuario   := FDQuery1.FieldByName('USUARIO_ANALISTA').asstring;
    datahora  := FDQuery1.FieldByName('DATA_HORA').asstring;
    mensagem  := FDQuery1.FieldByName('MENSAGEM').asstring;
    texto     := usuario + ' ' + datahora + ' : ' + mensagem;
    Memo1.Lines.Add(texto);

    FDQuery1.Close;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('UPDATE CHATSUPORTE SET visualizado_cli = 1 WHERE visualizado_cli = 0');
    FDQuery1.ExecSQL;
    FDQuery1.Close;

  end;

end;

procedure TFrmSuporte.Timer1Timer(Sender: TObject);
begin
  inherited;
  retornamensagem;
end;

end.
