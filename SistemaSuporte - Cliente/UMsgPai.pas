unit UMsgPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  dxGDIPlusClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmPaiMsg = class(TForm)
    Timer1: TTimer;
    FDQuery1: TFDQuery;
    Button1: TButton;
    EdtMsg: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LbCpfCnpj: TLabel;
    LbRazaoSocial: TLabel;
    LbUsuario: TLabel;
    Memo1: TMemo;
    Label6: TLabel;
    LbNrChamado: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPaiMsg: TFrmPaiMsg;

implementation

{$R *.dfm}

uses UConexao;

end.
