inherited FrmSuporte: TFrmSuporte
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 457
  Position = poDesktopCenter
  ExplicitHeight = 496
  PixelsPerInch = 96
  TextHeight = 13
  inherited Button1: TButton
    OnClick = Button1Click
  end
  inherited Timer1: TTimer
    OnTimer = Timer1Timer
  end
  inherited FDQuery1: TFDQuery
    Left = 424
  end
end
