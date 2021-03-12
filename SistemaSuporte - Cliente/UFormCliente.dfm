inherited FrmCliente: TFrmCliente
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Chat Suporte (Cliente)'
  ClientHeight = 453
  KeyPreview = True
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitHeight = 492
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Left = 294
    Width = 99
    Caption = 'Chat Suporte'
    ExplicitLeft = 294
    ExplicitWidth = 99
  end
  inherited Button1: TButton
    TabOrder = 2
    OnClick = Button1Click
  end
  inherited Memo1: TMemo
    TabStop = False
    TabOrder = 0
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
