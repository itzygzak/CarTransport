object FrmGrafik: TFrmGrafik
  Left = 0
  Top = 0
  Caption = 'Grafik'
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
          FieldName = 'GODZ_POWROTU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'GODZ POWROTU'
          Width = 159
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
  object frxPdfXprt1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 392
    Top = 89
  end
  object frXrprt1: TfrxReport
    Version = '6.2.1'
    DataSet = frXdbDtst1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.ShowCaptions = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44381.793279525500000000
    ReportOptions.LastChange = 44381.812292743100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 552
    Top = 65
    Datasets = <
      item
        DataSet = frXdbDtst1
        DataSetName = 'frxDBDataset1'
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
      Frame.Typ = []
      object Date: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 434.645950000000000000
        Top = 18.897650000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          '[Date]')
      end
      object Time: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 540.472790000000000000
        Top = 18.897650000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[Time]')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 94.488250000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Kierowca:')
        ParentFont = False
      end
      object frxDBDataset1IMIE: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 132.283550000000000000
        Width = 400.630180000000000000
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
      object frxDBDataset1NAZWISKO: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 170.078850000000000000
        Width = 400.630180000000000000
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
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 226.771800000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Pojazd')
        ParentFont = False
      end
      object frxDBDataset1MARKA: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 268.346630000000000000
        Width = 321.260050000000000000
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
      object frxDBDataset1LADOWNOSC: TfrxMemoView
        IndexTag = 2
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 340.157700000000000000
        Width = 321.260050000000000000
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
        IndexTag = 3
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 306.141930000000000000
        Width = 321.260050000000000000
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
      object Memo3: TfrxMemoView
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 396.850650000000000000
        Width = 117.165430000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Miejscowo'#347#263)
        ParentFont = False
      end
      object frxDBDataset1NAZWA: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 438.425480000000000000
        Width = 192.756030000000000000
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
      object frxDBDataset1KOD_POCZTOWY: TfrxMemoView
        IndexTag = 2
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 468.661720000000000000
        Width = 192.756030000000000000
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
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 525.354670000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Wysy'#322'ka')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        AllowVectorExport = True
        Left = 355.275820000000000000
        Top = 525.354670000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Powr'#243't')
        ParentFont = False
      end
      object frxDBDataset1DATA_WYSYLKI: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 566.929500000000000000
        Width = 79.370130000000000000
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
      object frxDBDataset1GODZ_WYSYLKI: TfrxMemoView
        IndexTag = 2
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 600.945270000000000000
        Width = 79.370130000000000000
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
      object frxDBDataset1GODZ_POWROTU: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 355.275820000000000000
        Top = 600.945270000000000000
        Width = 79.370130000000000000
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
        IndexTag = 2
        AllowVectorExport = True
        Left = 355.275820000000000000
        Top = 566.929500000000000000
        Width = 79.370130000000000000
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
      object Memo6: TfrxMemoView
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 661.417750000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Dokument')
        ParentFont = False
      end
      object frxDBDataset1UWAGI: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 778.583180000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
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
        IndexTag = 1
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 699.213050000000000000
        Width = 400.630180000000000000
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
      object Memo7: TfrxMemoView
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 744.567410000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Uwagi')
        ParentFont = False
      end
      object Page: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 566.929500000000000000
        Top = 1020.473100000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          '[Page]')
      end
      object Page2: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 18.897650000000000000
        Top = 1020.473100000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          '[Page#]')
      end
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
      'UWAGI=UWAGI'
      'DATA_POWROTU=DATA_POWROTU'
      'GODZ_POWROTU=GODZ_POWROTU')
    DataSet = DataModule1.ibQryGrafik
    BCDToCurrency = False
    Left = 632
    Top = 65
  end
end
