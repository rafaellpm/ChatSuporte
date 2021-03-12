program ChatSuporteSup;

uses
  Vcl.Forms,
  UMsgPai in 'UMsgPai.pas' {FrmPaiMsg},
  UMsgSuporte in 'UMsgSuporte.pas' {FrmSuporte},
  UConexao in 'UConexao.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFrmSuporte, FrmSuporte);
  Application.Run;
end.
