object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 141
  Width = 260
  object FDDllMySQL: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Sistema\libmysql.dll'
    Left = 176
    Top = 40
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=chatsuporte'
      'User_Name=quantum'
      'Password=quantum28042004'
      'Server=192.168.0.143'
      'Port=3390'
      'DriverID=MySQL')
    Connected = True
    Left = 120
    Top = 72
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 56
    Top = 40
  end
end
