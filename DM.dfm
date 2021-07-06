object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 408
  Width = 1031
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
    Database = ibDtBase1
    Transaction = ibTransKier
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM KIEROWCY')
    Left = 424
    Top = 32
  end
  object ibTransKier: TIBTransaction
    DefaultDatabase = ibDtBase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 416
    Top = 112
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
  object ibQryMsc: TIBQuery
    Database = ibDtBase1
    Transaction = ibTransUzyt
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM miejscowosci')
    Left = 512
    Top = 40
  end
  object ibTransMsc: TIBTransaction
    DefaultDatabase = ibDtBase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 504
    Top = 112
  end
  object dsMsc: TDataSource
    DataSet = ibQryMsc
    Left = 512
    Top = 224
  end
  object ibQryPojazdy: TIBQuery
    Database = ibDtBase1
    Transaction = ibTransPojazdy
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM POJAZDY')
    Left = 616
    Top = 32
  end
  object dsKier: TDataSource
    DataSet = ibQryKier
    Left = 408
    Top = 232
  end
  object ibTransPojazdy: TIBTransaction
    DefaultDatabase = ibDtBase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 608
    Top = 112
  end
  object dsPojazdy: TDataSource
    DataSet = ibQryPojazdy
    Left = 616
    Top = 224
  end
  object ibQryGrafik: TIBQuery
    Database = ibDtBase1
    Transaction = ibTransGrafik
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT  k.imie, k.nazwisko, p.marka, p.typ, p.ladownosc, m.nazwa' +
        ', m.kod_pocztowy, g.data_wysylki, '
      
        'g.godz_wysylki, g.wg_dokument, g.uwagi, g.data_powrotu, g.godz_p' +
        'owrotu '
      'FROM kierowcy k, pojazdy p, miejscowosci m, grafik g'
      
        'WHERE k.id_kierowca = g.id_kierowca AND p.id_pojazdy = g.id_poja' +
        'zdy AND m.id_miejscowosci = g.id_miejscowosci')
    Left = 704
    Top = 40
  end
  object ibTransGrafik: TIBTransaction
    DefaultDatabase = ibDtBase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 696
    Top = 112
  end
  object dsGrafik: TDataSource
    DataSet = ibQryGrafik
    Left = 696
    Top = 224
  end
  object ibQryFirma: TIBQuery
    Database = ibDtBase1
    Transaction = ibTransFirma
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select * from firma')
    Left = 776
    Top = 48
  end
  object ibTransFirma: TIBTransaction
    DefaultDatabase = ibDtBase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 776
    Top = 112
  end
  object dsFirma: TDataSource
    DataSet = ibQryFirma
    Left = 768
    Top = 224
  end
end
