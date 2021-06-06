object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 408
  Width = 871
  object ds1: TDataSource
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
end
