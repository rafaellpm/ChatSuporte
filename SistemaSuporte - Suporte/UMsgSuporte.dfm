inherited FrmSuporte: TFrmSuporte
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 457
  KeyPreview = True
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  ExplicitHeight = 496
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Left = 289
    Width = 96
    Caption = 'Chat Suporte'
    ExplicitLeft = 289
    ExplicitWidth = 96
  end
  inherited Button1: TButton
    TabOrder = 2
    OnClick = Button1Click
  end
  inherited Memo1: TMemo
    TabOrder = 0
  end
  inherited Timer1: TTimer
    OnTimer = Timer1Timer
  end
  inherited FDQuery1: TFDQuery
    Left = 424
  end
end
