object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 453
  Width = 584
  object ADOConnection1: TADOConnection
    Left = 168
    Top = 152
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Server=103.129.223.122'
      'Database=nusaputra_db_ti17'
      'User_Name=nusaputra_TI17'
      'Password=root_ti17'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 328
    Top = 80
  end
  object SQLConnection1: TSQLConnection
    Left = 336
    Top = 160
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from login where username=:username;')
    Left = 192
    Top = 256
    ParamData = <
      item
        Name = 'USERNAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 344
    Top = 264
  end
end
