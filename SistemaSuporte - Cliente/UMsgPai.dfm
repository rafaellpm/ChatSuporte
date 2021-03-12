object FrmPaiMsg: TFrmPaiMsg
  Left = 0
  Top = 0
  Caption = 'Chat Suporte'
  ClientHeight = 466
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 249
    Top = 8
    Width = 176
    Height = 19
    AutoSize = False
    Caption = 'Chat Suporte Quantum'
    EllipsisPosition = epWordEllipsis
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object Label2: TLabel
    Left = 9
    Top = 394
    Width = 31
    Height = 13
    Caption = 'Digite:'
  end
  object Label3: TLabel
    Left = 9
    Top = 38
    Width = 64
    Height = 13
    Caption = 'Raz'#227'o Social:'
  end
  object Label4: TLabel
    Left = 9
    Top = 55
    Width = 29
    Height = 13
    Caption = 'CNPJ:'
  end
  object Label5: TLabel
    Left = 9
    Top = 72
    Width = 42
    Height = 13
    Caption = 'Analista:'
  end
  object LbCpfCnpj: TLabel
    Left = 45
    Top = 55
    Width = 41
    Height = 13
    Caption = 'cpf_cnpj'
  end
  object LbRazaoSocial: TLabel
    Left = 79
    Top = 38
    Width = 53
    Height = 13
    Caption = 'razaosocial'
  end
  object LbUsuario: TLabel
    Left = 57
    Top = 72
    Width = 35
    Height = 13
    Caption = 'usuario'
  end
  object Label6: TLabel
    Left = 526
    Top = 13
    Width = 49
    Height = 13
    Caption = 'Chamado:'
  end
  object LbNrChamado: TLabel
    Left = 581
    Top = 13
    Width = 30
    Height = 13
    Caption = '00000'
  end
  object Button1: TButton
    Left = 606
    Top = 413
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
  end
  object EdtMsg: TEdit
    Left = 8
    Top = 413
    Width = 592
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TextHint = 'Mensagem'
  end
  object Memo1: TMemo
    Left = 9
    Top = 92
    Width = 673
    Height = 296
    Enabled = False
    TabOrder = 2
  end
  object Timer1: TTimer
    Left = 472
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 400
    Top = 32
  end
end
