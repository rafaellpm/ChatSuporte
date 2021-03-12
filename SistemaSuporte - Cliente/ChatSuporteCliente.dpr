program ChatSuporteCliente;

uses
  Vcl.Forms,
  UMsgPai in 'UMsgPai.pas' {FrmPaiMsg},
  UFormCliente in 'UFormCliente.pas' {FrmCliente},
  UConexao in 'UConexao.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCliente, FrmCliente);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
