program ChatSuporte;

uses
  Vcl.Forms,
  UMsgPai in 'UMsgPai.pas' {FrmPaiMsg},
  UFormCliente in 'UFormCliente.pas' {FrmCliente},
  UMsgSuporte in 'UMsgSuporte.pas' {FrmSuporte},
  UConexao in 'UConexao.pas' {DataModule1: TDataModule},
  UPrincipal in 'UPrincipal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
