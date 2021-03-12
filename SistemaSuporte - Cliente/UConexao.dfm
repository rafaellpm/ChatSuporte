object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 141
  Width = 260
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=chatsuporte'
      'User_Name=quantum'
      'Password=quantum28042004'
      'Server=192.168.0.143'
      'Port=3390'
      'DriverID=MySQL')
    Left = 96
    Top = 32
  end
  object FDDllMySQL: TFDPhysMySQLDriverLink
    Left = 176
    Top = 40
  end
end
