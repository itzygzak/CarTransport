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
  OldCreateOrder = False
  OnShow = FormShow
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
    Height = 505
    Align = alClient
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 1
    object SMDBgrdGrafik: TSMDBGrid
      Left = 2
      Top = 136
      Width = 928
      Height = 367
      Align = alBottom
      DataSource = DataModule1.dsGrafik
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA_WYSYLKI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'DATA WYSYLKI'
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_POWROTU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'DATA POWROTU'
          Width = 159
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GODZ_WYSYLKI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'GODZ WYSYLKI'
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GODZ_POWROTU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'GODZ POWROTU'
          Width = 159
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WG_DOKUMENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'WG DOKUMENTU'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UWAGI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 107
          Visible = True
        end>
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
      Height = 137
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
              Caption = 'Tylko dzisiaj'
            end
            item
              Caption = 'Zakres dat'
            end
            item
            end
            item
              Caption = 'Zamknij okno'
              OnClick = ctgryBtns1Categories0Items3Click
            end
            item
              Caption = 'Podgl'#261'd wydruku'
              OnClick = ctgryBtns1Categories0Items4Click
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
  object frXdbDtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DataModule1.ibQryGrafik
    BCDToCurrency = False
    Left = 608
    Top = 65
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
    ReportOptions.LastChange = 44383.949477997700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 680
    Top = 73
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
        Top = 370.393940000000000000
        Width = 158.740260000000000000
        Height = 18.897650000000000000
        DataField = 'IMIE'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."IMIE"]')
      end
      object frxDBDataset1GODZ_POWROTU: TfrxMemoView
        IndexTag = 2
        AllowVectorExport = True
        Left = 325.039580000000000000
        Top = 665.197280000000000000
        Width = 204.094620000000000000
        Height = 18.897650000000000000
        DataField = 'GODZ_POWROTU'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."GODZ_POWROTU"]')
      end
      object frxDBDataset1DATA_POWROTU: TfrxMemoView
        IndexTag = 3
        AllowVectorExport = True
        Left = 143.622140000000000000
        Top = 665.197280000000000000
        Width = 234.330860000000000000
        Height = 18.897650000000000000
        DataField = 'DATA_POWROTU'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."DATA_POWROTU"]')
      end
      object frxDBDataset1UWAGI: TfrxMemoView
        IndexTag = 4
        AllowVectorExport = True
        Left = 143.622140000000000000
        Top = 608.504330000000000000
        Width = 253.228510000000000000
        Height = 18.897650000000000000
        DataField = 'UWAGI'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."UWAGI"]')
      end
      object frxDBDataset1WG_DOKUMENT: TfrxMemoView
        IndexTag = 5
        AllowVectorExport = True
        Left = 143.622140000000000000
        Top = 566.929500000000000000
        Width = 275.905690000000000000
        Height = 18.897650000000000000
        DataField = 'WG_DOKUMENT'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."WG_DOKUMENT"]')
      end
      object frxDBDataset1GODZ_WYSYLKI: TfrxMemoView
        IndexTag = 6
        AllowVectorExport = True
        Left = 325.039580000000000000
        Top = 510.236550000000000000
        Width = 260.787570000000000000
        Height = 18.897650000000000000
        DataField = 'GODZ_WYSYLKI'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."GODZ_WYSYLKI"]')
      end
      object frxDBDataset1DATA_WYSYLKI: TfrxMemoView
        IndexTag = 7
        AllowVectorExport = True
        Left = 143.622140000000000000
        Top = 510.236550000000000000
        Width = 291.023810000000000000
        Height = 18.897650000000000000
        DataField = 'DATA_WYSYLKI'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."DATA_WYSYLKI"]')
      end
      object frxDBDataset1KOD_POCZTOWY: TfrxMemoView
        IndexTag = 8
        AllowVectorExport = True
        Left = 336.378170000000000000
        Top = 408.189240000000000000
        Width = 230.551330000000000000
        Height = 18.897650000000000000
        DataField = 'KOD_POCZTOWY'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."KOD_POCZTOWY"]')
      end
      object frxDBDataset1NAZWA: TfrxMemoView
        IndexTag = 9
        AllowVectorExport = True
        Left = 143.622140000000000000
        Top = 408.189240000000000000
        Width = 222.992270000000000000
        Height = 18.897650000000000000
        DataField = 'NAZWA'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."NAZWA"]')
      end
      object frxDBDataset1LADOWNOSC: TfrxMemoView
        IndexTag = 10
        AllowVectorExport = True
        Left = 442.205010000000000000
        Top = 445.984540000000000000
        Width = 260.787570000000000000
        Height = 18.897650000000000000
        DataField = 'LADOWNOSC'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."LADOWNOSC"]')
      end
      object frxDBDataset1TYP: TfrxMemoView
        IndexTag = 11
        AllowVectorExport = True
        Left = 309.921460000000000000
        Top = 445.984540000000000000
        Width = 234.330860000000000000
        Height = 18.897650000000000000
        DataField = 'TYP'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."TYP"]')
      end
      object frxDBDataset1MARKA: TfrxMemoView
        IndexTag = 12
        AllowVectorExport = True
        Left = 143.622140000000000000
        Top = 445.984540000000000000
        Width = 249.448980000000000000
        Height = 18.897650000000000000
        DataField = 'MARKA'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."MARKA"]')
      end
      object frxDBDataset1NAZWISKO: TfrxMemoView
        IndexTag = 13
        AllowVectorExport = True
        Left = 309.921460000000000000
        Top = 370.393940000000000000
        Width = 268.346630000000000000
        Height = 18.897650000000000000
        DataField = 'NAZWISKO'
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."NAZWISKO"]')
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
        Height = 336.378170000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Kierowca'
          ''
          'Docelowo'
          ''
          'Pojazd'
          ''
          'Data i godzina wysy'#322'ki'
          ''
          'Nr dokumentu'
          ''
          'Uwagi'
          ''
          'Data i godzina powrotu')
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
        Left = 498.897960000000000000
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
    end
  end
  object frXdbDtst2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = DataModule1.ibQryFirma
    BCDToCurrency = False
    Left = 608
    Top = 113
  end
end
