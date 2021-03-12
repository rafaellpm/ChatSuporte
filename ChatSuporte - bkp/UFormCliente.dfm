inherited FrmCliente: TFrmCliente
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Chat Suporte (Cliente)'
  ClientHeight = 453
  Position = poDesktopCenter
  OnCreate = FormCreate
  ExplicitHeight = 492
  PixelsPerInch = 96
  TextHeight = 13
  inherited Button1: TButton
    OnClick = Button1Click
  end
  inherited Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 456
    Top = 32
  end
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      'select * from chatsuporte')
  end
end
