object FrmGrafik: TFrmGrafik
  Left = 0
  Top = 0
  Caption = 'CarTransport - Grafik'
  ClientHeight = 546
  ClientWidth = 1138
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    1138
    546)
  PixelsPerInch = 96
  TextHeight = 13
  object rzpnl1: TRzPanel
    Left = 0
    Top = 0
    Width = 1138
    Height = 41
    Align = alTop
    BorderOuter = fsNone
    Color = clHighlight
    TabOrder = 0
    object img1: TImage
      Left = 1098
      Top = 0
      Width = 40
      Height = 41
      Align = alRight
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
        002808060000008CFEB86D000000634944415478DAEDD3310A00300843D17AFF
        43B76E8E150A31D09F295B9E83B1CC13D3008052E0CE5C0ED84B90C80004E80A
        54EC7780D501FE06B47F128000A7818AFD0EB03A40806640FB2F0608701AA8D8
        EF00AB03FC0D68FF2400018E021D03F0350736D88B2980FFC434000000004945
        4E44AE426082}
      OnClick = img1Click
      ExplicitLeft = 859
      ExplicitHeight = 40
    end
  end
  object rzpnl2: TRzPanel
    Left = 0
    Top = 41
    Width = 932
    Height = 344
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 1
    object rzlbl1: TRzLabel
      Left = 760
      Top = 42
      Width = 118
      Height = 16
      Caption = 'Powi'#281'ksz czcionk'#281
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16737843
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRaised
    end
    object rzlbl2: TRzLabel
      Left = 328
      Top = 64
      Width = 17
      Height = 16
      Caption = 'Do'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16737843
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRaised
    end
    object rzlbl3: TRzLabel
      Left = 16
      Top = 64
      Width = 82
      Height = 16
      Caption = 'Wyszukaj od'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16737843
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRaised
    end
    object rzlbl4: TRzLabel
      Left = 16
      Top = 16
      Width = 330
      Height = 19
      Caption = 'Lista ustalonych kurs'#243'w wg daty wysy'#322'ki'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16737843
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRaised
    end
    object SMDBgrdGrafik: TSMDBGrid
      Left = 2
      Top = 115
      Width = 928
      Height = 222
      DataSource = DataModule1.dsGrafik
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      StyleElements = []
      Flat = False
      BandsFont.Charset = DEFAULT_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'Tahoma'
      BandsFont.Style = []
      Groupings = <>
      GridStyle.Style = gsNormal
      GridStyle.OddColor = clWindow
      GridStyle.EvenColor = clWindow
      GridStyle.Title.Direction = fdLeftToRight
      GridStyle.Title.StartColor = clMoneyGreen
      GridStyle.Title.EndColor = clCream
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoAutoWidth, eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 20
      ScrollBars = ssHorizontal
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA_WYSYLKI'
          Title.Caption = 'DATA WYSYLKI'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_POWROTU'
          Title.Caption = 'DATA POWROTU'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GODZ_WYSYLKI'
          Title.Caption = 'GODZ WYSYLKI'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GODZ_POWROTU'
          Title.Caption = 'GODZ POWROTU'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WG_DOKUMENT'
          Title.Caption = 'WG DOKUMENTU'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADRES_DOSTAWY'
          Title.Caption = 'ADRES DOSTAWY'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NR_TEL_KLIENTA'
          Title.Caption = 'TEL KLIENTA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAZWA'
          Title.Caption = 'MIEJSCOWO'#346#262
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 160
          Visible = True
        end>
    end
    object trckBr1: TTrackBar
      Left = 752
      Top = 64
      Width = 150
      Height = 45
      Max = 16
      Min = 8
      Position = 8
      TabOrder = 1
      OnChange = trckBr1Change
    end
    object rzDtmPckrOd: TRzDateTimePicker
      Left = 104
      Top = 59
      Width = 153
      Height = 21
      Date = 44385.000000000000000000
      Format = ''
      Time = 0.619093391200294700
      TabOrder = 2
    end
    object rzDtmPckrDo: TRzDateTimePicker
      Left = 351
      Top = 59
      Width = 186
      Height = 21
      Date = 44385.000000000000000000
      Format = ''
      Time = 0.619150254628039000
      TabOrder = 3
    end
  end
  object spltVw1: TSplitView
    AlignWithMargins = True
    Left = 935
    Top = 44
    Width = 200
    Height = 499
    Color = clCream
    OpenedWidth = 200
    Placement = svpRight
    TabOrder = 2
    object ctgryBtns1: TCategoryButtons
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 194
      Height = 166
      Align = alTop
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonOptions = [boFullSize, boGradientFill, boShowCaptions, boVerticalCategoryCaptions]
      Categories = <
        item
          Caption = 'Wybierz z menu'
          Color = clMoneyGreen
          Collapsed = False
          Items = <
            item
              Caption = '[F6]  Tylko dzisiaj'
              OnClick = ctgryBtns1Categories0Items0Click
            end
            item
              Caption = '[F5]  Zakres dat'
              OnClick = ctgryBtns1Categories0Items1Click
            end
            item
              Caption = '[F7]  Anuluj kurs'
              OnClick = ctgryBtns1Categories0Items2Click
            end
            item
              Caption = '[F11] Podgl'#261'd wydruku'
              OnClick = ctgryBtns1Categories0Items4Click
            end
            item
            end
            item
              Caption = '[F12] Zamknij okno'
              OnClick = ctgryBtns1Categories0Items3Click
            end>
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HotButtonColor = clHighlight
      RegularButtonColor = clWhite
      SelectedButtonColor = 15132390
      TabOrder = 0
    end
  end
  object RzPnl3: TRzPanel
    Left = 0
    Top = 391
    Width = 933
    Height = 153
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 3
    object dbmmoUwagi: TDBMemo
      Left = 2
      Top = 2
      Width = 929
      Height = 149
      Align = alClient
      DataField = 'UWAGI'
      DataSource = DataModule1.dsGrafik
      TabOrder = 0
    end
  end
  object frXdbDtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IMIE=IMIE'
      'NAZWISKO=NAZWISKO'
      'MARKA=MARKA'
      'TYP=TYP'
      'LADOWNOSC=LADOWNOSC'
      'NAZWA=NAZWA'
      'KOD_POCZTOWY=KOD_POCZTOWY'
      'DATA_WYSYLKI=DATA_WYSYLKI'
      'GODZ_WYSYLKI=GODZ_WYSYLKI'
      'WG_DOKUMENT=WG_DOKUMENT'
      'ADRES_DOSTAWY=ADRES_DOSTAWY'
      'NR_TEL_KLIENTA=NR_TEL_KLIENTA'
      'UWAGI=UWAGI'
      'DATA_POWROTU=DATA_POWROTU'
      'GODZ_POWROTU=GODZ_POWROTU')
    DataSet = DataModule1.ibQryGrafik
    BCDToCurrency = False
    Left = 984
    Top = 417
  end
  object frXrprt1: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44383.892368009300000000
    ReportOptions.LastChange = 44398.499050856480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1064
    Top = 425
    Datasets = <
      item
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frXdbDtst2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDot
      Frame.Typ = [ftBottom]
      object frxDBDataset2NAZWA: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 154.960730000000000000
        Top = 102.047310000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'NAZWA'
        DataSet = frXdbDtst2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset2."NAZWA"]')
        ParentFont = False
      end
      object frxDBDataset2STRONA_WWW: TfrxMemoView
        IndexTag = 2
        AllowVectorExport = True
        Left = 154.960730000000000000
        Top = 234.330860000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'STRONA_WWW'
        DataSet = frXdbDtst2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset2."STRONA_WWW"]')
        ParentFont = False
      end
      object frxDBDataset2EMAIL: TfrxMemoView
        IndexTag = 3
        AllowVectorExport = True
        Left = 154.960730000000000000
        Top = 253.228510000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'EMAIL'
        DataSet = frXdbDtst2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset2."EMAIL"]')
        ParentFont = False
      end
      object frxDBDataset2TEL_2: TfrxMemoView
        IndexTag = 4
        AllowVectorExport = True
        Left = 154.960730000000000000
        Top = 215.433210000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'TEL_2'
        DataSet = frXdbDtst2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset2."TEL_2"]')
        ParentFont = False
      end
      object frxDBDataset2TEL_1: TfrxMemoView
        IndexTag = 5
        AllowVectorExport = True
        Left = 154.960730000000000000
        Top = 196.535560000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'TEL_1'
        DataSet = frXdbDtst2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset2."TEL_1"]')
        ParentFont = False
      end
      object frxDBDataset2NIP: TfrxMemoView
        IndexTag = 6
        AllowVectorExport = True
        Left = 154.960730000000000000
        Top = 177.637910000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'NIP'
        DataSet = frXdbDtst2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset2."NIP"]')
        ParentFont = False
      end
      object frxDBDataset2MIEJSCOWOSC: TfrxMemoView
        IndexTag = 7
        AllowVectorExport = True
        Left = 154.960730000000000000
        Top = 120.944960000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'MIEJSCOWOSC'
        DataSet = frXdbDtst2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset2."MIEJSCOWOSC"]')
        ParentFont = False
      end
      object frxDBDataset2KOD_POCZTOWY: TfrxMemoView
        IndexTag = 8
        AllowVectorExport = True
        Left = 154.960730000000000000
        Top = 158.740260000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'KOD_POCZTOWY'
        DataSet = frXdbDtst2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset2."KOD_POCZTOWY"]')
        ParentFont = False
      end
      object frxDBDataset2ULICA: TfrxMemoView
        IndexTag = 9
        AllowVectorExport = True
        Left = 154.960730000000000000
        Top = 139.842610000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'ULICA'
        DataSet = frXdbDtst2
        DataSetName = 'frxDBDataset2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset2."ULICA"]')
        ParentFont = False
      end
      object frxDBDataset1IMIE: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 143.622140000000000000
        Top = 366.614173230000000000
        Width = 158.740260000000000000
        Height = 18.897650000000000000
        DataField = 'IMIE'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."IMIE"]')
        ParentFont = False
      end
      object frxDBDataset1GODZ_POWROTU: TfrxMemoView
        IndexTag = 2
        AllowVectorExport = True
        Left = 317.480520000000000000
        Top = 661.417750000000000000
        Width = 204.094620000000000000
        Height = 18.897650000000000000
        DataField = 'GODZ_POWROTU'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."GODZ_POWROTU"]')
        ParentFont = False
      end
      object frxDBDataset1DATA_POWROTU: TfrxMemoView
        IndexTag = 3
        AllowVectorExport = True
        Left = 143.622140000000000000
        Top = 661.417750000000000000
        Width = 234.330860000000000000
        Height = 18.897650000000000000
        DataField = 'DATA_POWROTU'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."DATA_POWROTU"]')
        ParentFont = False
      end
      object frxDBDataset1UWAGI: TfrxMemoView
        IndexTag = 4
        AllowVectorExport = True
        Left = 143.622140000000000000
        Top = 740.787880000000000000
        Width = 556.228510000000000000
        Height = 95.897650000000000000
        DataField = 'UWAGI'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."UWAGI"]')
        ParentFont = False
      end
      object frxDBDataset1WG_DOKUMENT: TfrxMemoView
        IndexTag = 5
        AllowVectorExport = True
        Left = 143.622140000000000000
        Top = 600.945270000000000000
        Width = 275.905690000000000000
        Height = 18.897650000000000000
        DataField = 'WG_DOKUMENT'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."WG_DOKUMENT"]')
        ParentFont = False
      end
      object frxDBDataset1GODZ_WYSYLKI: TfrxMemoView
        IndexTag = 6
        AllowVectorExport = True
        Left = 321.260050000000000000
        Top = 563.149970000000000000
        Width = 260.787570000000000000
        Height = 18.897650000000000000
        DataField = 'GODZ_WYSYLKI'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."GODZ_WYSYLKI"]')
        ParentFont = False
      end
      object frxDBDataset1DATA_WYSYLKI: TfrxMemoView
        IndexTag = 7
        AllowVectorExport = True
        Left = 143.622140000000000000
        Top = 563.149970000000000000
        Width = 291.023810000000000000
        Height = 18.897650000000000000
        DataField = 'DATA_WYSYLKI'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."DATA_WYSYLKI"]')
        ParentFont = False
      end
      object frxDBDataset1KOD_POCZTOWY: TfrxMemoView
        IndexTag = 8
        AllowVectorExport = True
        Left = 325.039580000000000000
        Top = 419.527830000000000000
        Width = 230.551330000000000000
        Height = 18.897650000000000000
        DataField = 'KOD_POCZTOWY'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."KOD_POCZTOWY"]')
        ParentFont = False
      end
      object frxDBDataset1NAZWA: TfrxMemoView
        IndexTag = 9
        AllowVectorExport = True
        Left = 143.622140000000000000
        Top = 419.527830000000000000
        Width = 222.992270000000000000
        Height = 18.897650000000000000
        DataField = 'NAZWA'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."NAZWA"]')
        ParentFont = False
      end
      object frxDBDataset1LADOWNOSC: TfrxMemoView
        IndexTag = 10
        AllowVectorExport = True
        Left = 442.205010000000000000
        Top = 502.677189760000000000
        Width = 260.787570000000000000
        Height = 18.897650000000000000
        DataField = 'LADOWNOSC'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."LADOWNOSC"]')
        ParentFont = False
      end
      object frxDBDataset1TYP: TfrxMemoView
        IndexTag = 11
        AllowVectorExport = True
        Left = 309.921460000000000000
        Top = 502.677189760000000000
        Width = 234.330860000000000000
        Height = 18.897650000000000000
        DataField = 'TYP'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."TYP"]')
        ParentFont = False
      end
      object frxDBDataset1MARKA: TfrxMemoView
        IndexTag = 12
        AllowVectorExport = True
        Left = 143.622140000000000000
        Top = 502.677490000000000000
        Width = 249.448980000000000000
        Height = 18.897650000000000000
        DataField = 'MARKA'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."MARKA"]')
        ParentFont = False
      end
      object frxDBDataset1NAZWISKO: TfrxMemoView
        IndexTag = 13
        AllowVectorExport = True
        Left = 309.921460000000000000
        Top = 366.614173230000000000
        Width = 268.346630000000000000
        Height = 18.897650000000000000
        DataField = 'NAZWISKO'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."NAZWISKO"]')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 3.779530000000000000
        Width = 260.787570000000000000
        Height = 34.015770000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -29
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'List przewozowy')
        ParentFont = False
      end
      object Date: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 415.748300000000000000
        Top = 7.559060000000000000
        Width = 132.283550000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
      end
      object Time: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 555.590910000000000000
        Top = 7.559060000000000000
        Width = 139.842610000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[Time]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Left = 18.897650000000000000
        Top = 56.692950000000000000
        Width = 170.078850000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'Firma - dostawca')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        AllowVectorExport = True
        Left = 18.897650000000000000
        Top = 321.260050000000000000
        Width = 128.504020000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'Informacje')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Left = 18.897650000000000000
        Top = 366.614410000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        AutoWidth = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Kierowca')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        AllowVectorExport = True
        Left = 18.897650000000000000
        Top = 105.826840000000000000
        Width = 94.488250000000000000
        Height = 185.196970000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Nazwa'
          ''
          ''
          ''
          'NIP'
          'Telefony'
          ''
          'Strona www.'
          'Adres e-mail')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        AllowVectorExport = True
        Left = 7.559060000000000000
        Top = 1024.252630000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Copyright Zyg-zak, www.zyg-zak.eu')
        ParentFont = False
      end
      object Line1: TfrxLineView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 45.354360000000000000
        Width = 714.331170000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 3.000000000000000000
      end
      object Memo7: TfrxMemoView
        AllowVectorExport = True
        Left = 18.897650000000000000
        Top = 411.968770000000000000
        Width = 94.488250000000000000
        Height = 41.574830000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Miejscowo'#347#263
          'cel podr'#243#380'y')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        AllowVectorExport = True
        Left = 18.897650000000000000
        Top = 502.677194650000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Pojazd')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        AllowVectorExport = True
        Left = 18.897650000000000000
        Top = 544.252320000000000000
        Width = 113.385900000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Data i godzina'
          'wysy'#322'ki')
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        AllowVectorExport = True
        Left = 18.897650000000000000
        Top = 600.945270000000000000
        Width = 113.385900000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Nr dokumentu')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        AllowVectorExport = True
        Left = 18.897650000000000000
        Top = 740.787880000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Uwagi:')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        AllowVectorExport = True
        Left = 18.897650000000000000
        Top = 642.520100000000000000
        Width = 109.606370000000000000
        Height = 45.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Data i godzina'
          'powrotu')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        AllowVectorExport = True
        Left = 18.897650000000000000
        Top = 464.882190000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Adres dostawy:')
        ParentFont = False
      end
      object frxDBDataset1ADRES_DOSTAWY: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 139.842610000000000000
        Top = 464.882190000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'ADRES_DOSTAWY'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."ADRES_DOSTAWY"]')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        AllowVectorExport = True
        Left = 18.897650000000000000
        Top = 702.992580000000000000
        Width = 109.606370000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Nr. tel. klienta')
        ParentFont = False
      end
      object frxDBDataset1NR_TEL_KLIENTA: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 143.622140000000000000
        Top = 701.346940000000000000
        Width = 385.512060000000000000
        Height = 18.897650000000000000
        DataField = 'NR_TEL_KLIENTA'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."NR_TEL_KLIENTA"]')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        AllowVectorExport = True
        Left = 427.086890000000000000
        Top = 925.984850000000000000
        Width = 154.960730000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          'pieczatka, podpis')
      end
      object Line2: TfrxLineView
        AllowVectorExport = True
        Left = 413.000000000000000000
        Top = 922.000000000000000000
        Width = 233.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line3: TfrxLineView
        AllowVectorExport = True
        Left = 370.000000000000000000
        Top = 922.000000000000000000
        Width = 43.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
    end
  end
  object frXdbDtst2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = DataModule1.ibQryFirma
    BCDToCurrency = False
    Left = 984
    Top = 465
  end
end
