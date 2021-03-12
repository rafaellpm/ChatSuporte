unit UConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.MySQLDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Data.DB;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDDllMySQL: TFDPhysMySQLDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function ConsultaMySql(var Qry : TFDQuery; CmdSQL: string) : Boolean;

var
  DataModule1: TDataModule1;
  sqlstr : string;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
function ConsultaMySql(var Qry: TFDQuery; CmdSQL: string): Boolean;
begin
  Result := False;

  if (Trim(CmdSQL) = '') then
  begin
    Result := False;
    Exit;
  end;

  try
    Qry.ResourceOptions.SilentMode := True;
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add(CmdSQL);
    Qry.Open;

    if not Qry.IsEmpty then
      Result := True
    else
      Result := False;
  except
    raise;
    Result := False;
    Exit;
  end;
end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
var arquivo: string;
begin
  arquivo := '..\..\libmysql.dll';
  if FileExists(arquivo) then
    FDDllMySQL.VendorLib := arquivo;
end;

end.
