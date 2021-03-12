unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UFormCliente, UConexao, UMsgSuporte;


procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  FrmCliente := TFrmCliente.Create(Self);
  try
    FrmCliente.ShowModal;
  finally

  end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  FrmSuporte := TFrmSuporte.Create(Self);
  Try
    FrmSuporte.ShowModal;
  Finally

  End;
end;

end.
