object FrmHistoria: TFrmHistoria
  Left = 0
  Top = 0
  Caption = 'carTransport - Historia'
  ClientHeight = 572
  ClientWidth = 1177
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  DesignSize = (
    1177
    572)
  PixelsPerInch = 96
  TextHeight = 13
  object RzPnl1: TRzPanel
    Left = 0
    Top = 0
    Width = 1177
    Height = 44
    Align = alTop
    BorderOuter = fsNone
    BorderWidth = 2
    Color = clHighlight
    TabOrder = 0
    ExplicitWidth = 931
    object img1: TImage
      Left = 1135
      Top = 2
      Width = 40
      Height = 40
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
      ExplicitLeft = 879
    end
  end
  object RzPnl2: TRzPanel
    Left = 0
    Top = 41
    Width = 971
    Height = 96
    Anchors = [akLeft, akTop, akRight]
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 1
    ExplicitWidth = 725
    object rzlbl1: TRzLabel
      Left = 16
      Top = 56
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
      TextStyle = tsRecessed
    end
    object rzlbl2: TRzLabel
      Left = 360
      Top = 56
      Width = 16
      Height = 16
      Caption = 'do'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16737843
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRecessed
    end
    object rzlbl3: TRzLabel
      Left = 16
      Top = 9
      Width = 364
      Height = 19
      Caption = 'Przegl'#261'danie histori zdarze'#324' wg zakresu dat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16737843
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRaised
    end
    object rzlbl4: TRzLabel
      Left = 808
      Top = 8
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
    object rzDtmPckrOd: TRzDateTimePicker
      Left = 128
      Top = 54
      Width = 186
      Height = 21
      Date = 44360.000000000000000000
      Format = ''
      Time = 0.741989780093717900
      TabOrder = 0
    end
    object rzDtmPckrDo: TRzDateTimePicker
      Left = 394
      Top = 54
      Width = 186
      Height = 21
      Date = 44360.000000000000000000
      Format = ''
      Time = 0.742249918977904600
      TabOrder = 1
    end
    object trckBr1: TTrackBar
      Left = 800
      Top = 30
      Width = 150
      Height = 45
      Max = 14
      Min = 8
      Position = 8
      TabOrder = 2
      OnChange = trckBr1Change
    end
  end
  object RzPnl3: TRzPanel
    Left = 0
    Top = 143
    Width = 971
    Height = 250
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 2
    object SMDBgrdHistoria: TSMDBGrid
      Left = 2
      Top = 2
      Width = 967
      Height = 246
      Align = alClient
      DataSource = DataModule1.dsHistUzyt
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      StyleElements = [seFont, seBorder]
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
      ScrollBars = ssNone
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA_ZDARZ'
          Title.Caption = 'DATA ZDARZENIA'
          Width = 226
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STANOWISKO_K'
          Title.Caption = 'STANOWISKO'
          Width = 270
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMIE'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAZWISKO'
          Width = 214
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOGIN'
          Width = 123
          Visible = True
        end>
    end
  end
  object spltVw1: TSplitView
    Left = 977
    Top = 44
    Width = 200
    Height = 528
    Color = clCream
    OpenedWidth = 200
    Placement = svpRight
    TabOrder = 3
    ExplicitLeft = 731
    ExplicitHeight = 380
    object ctgryBtns1: TCategoryButtons
      Left = 0
      Top = 0
      Width = 200
      Align = alTop
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonOptions = [boFullSize, boGradientFill, boShowCaptions, boVerticalCategoryCaptions]
      Categories = <
        item
          Caption = 'Menu'
          Color = clMoneyGreen
          Collapsed = False
          Items = <
            item
              Caption = 'Szukaj [F5]'
              OnClick = ctgryBtns1Categories0Items0Click
            end
            item
            end
            item
              Caption = 'Zamknij [F12]'
              OnClick = ctgryBtns1Categories0Items2Click
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
      ExplicitTop = 6
    end
  end
  object RzPnl4: TRzPanel
    Left = 0
    Top = 397
    Width = 971
    Height = 175
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 4
    object dbmmoHistoria: TDBMemo
      Left = 2
      Top = 2
      Width = 967
      Height = 171
      Align = alClient
      DataField = 'OPERACJA'
      DataSource = DataModule1.dsHistUzyt
      TabOrder = 0
      ExplicitTop = -30
      ExplicitHeight = 205
    end
  end
end
