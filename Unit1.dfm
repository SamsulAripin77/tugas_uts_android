object module: Tmodule
  OldCreateOrder = False
  Height = 504
  Width = 617
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://localhost:8080/api/'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 96
    Top = 64
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 104
    Top = 152
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'text/html'
    Left = 240
    Top = 80
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = '0'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'username'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = '1'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'password'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 232
    Top = 200
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 408
    Top = 208
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 424
    Top = 120
  end
end
