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
          Width = 117
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
          Width = 127
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
          Width = 165
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
          Width = 204
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
end
