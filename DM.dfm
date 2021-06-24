object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 408
  Width = 871
  object dsUzyt: TDataSource
    DataSet = ibQryUzyt
    Left = 152
    Top = 232
  end
  object ibDtBase1: TIBDatabase
    DatabaseName = '127.0.0.1/3050:D:\Bazy\CarTransport\CARTRANSPORT.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=UTF8')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 40
    Top = 32
  end
  object ibTransUzyt: TIBTransaction
    DefaultDatabase = ibDtBase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 104
  end
  object ibQryUzyt: TIBQuery
    Database = ibDtBase1
    Transaction = ibTransUzyt
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM UZYT')
    Left = 136
    Top = 40
  end
  object ibQryKier: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 424
    Top = 48
  end
  object ibTransKier: TIBTransaction
    Left = 424
    Top = 112
  end
  object dsKier: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 224
  end
  object ibQryTemp: TIBQuery
    Database = ibDtBase1
    Transaction = ibTransTemp
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 232
    Top = 40
  end
  object ibTransTemp: TIBTransaction
    DefaultDatabase = ibDtBase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 232
    Top = 104
  end
  object dsTemp: TDataSource
    DataSet = ibQryTemp
    Left = 232
    Top = 232
  end
  object ibQryHistoria: TIBQuery
    Database = ibDtBase1
    Transaction = ibTransHistoria
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM HISTORIA')
    Left = 320
    Top = 32
  end
  object ibTransHistoria: TIBTransaction
    DefaultDatabase = ibDtBase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 312
    Top = 104
  end
  object dsHistoria: TDataSource
    DataSet = ibQryHistoria
    Left = 304
    Top = 232
  end
end
