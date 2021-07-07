object FrmHistoria: TFrmHistoria
  Left = 0
  Top = 0
  Caption = 'carTransport - Historia'
  ClientHeight = 424
  ClientWidth = 931
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPnl1: TRzPanel
    Left = 0
    Top = 0
    Width = 931
    Height = 44
    Align = alTop
    BorderOuter = fsNone
    BorderWidth = 2
    Color = clHighlight
    TabOrder = 0
    object img1: TImage
      Left = 889
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
    Width = 725
    Height = 96
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 1
    object rzlbl1: TRzLabel
      Left = 24
      Top = 24
      Width = 103
      Height = 19
      Caption = 'Wyszukaj od'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16737843
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRecessed
    end
    object rzlbl2: TRzLabel
      Left = 376
      Top = 24
      Width = 20
      Height = 19
      Caption = 'do'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16737843
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRecessed
    end
    object rzDtmPckrOd: TRzDateTimePicker
      Left = 152
      Top = 22
      Width = 186
      Height = 21
      Date = 44360.000000000000000000
      Format = ''
      Time = 0.741989780093717900
      TabOrder = 0
    end
    object rzDtmPckrDo: TRzDateTimePicker
      Left = 402
      Top = 22
      Width = 186
      Height = 21
      Date = 44360.000000000000000000
      Format = ''
      Time = 0.742249918977904600
      TabOrder = 1
    end
  end
  object RzPnl3: TRzPanel
    Left = 0
    Top = 143
    Width = 725
    Height = 281
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 2
    object RzDBGrd1: TRzDBGrid
      Left = 2
      Top = 2
      Width = 721
      Height = 277
      Align = alClient
      DataSource = DataModule1.dsHistoria
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object spltVw1: TSplitView
    Left = 731
    Top = 44
    Width = 200
    Height = 380
    Color = clCream
    OpenedWidth = 200
    Placement = svpRight
    TabOrder = 3
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
              Caption = 'Szukaj'
              OnClick = ctgryBtns1Categories0Items0Click
            end
            item
            end
            item
              Caption = 'Zamknij'
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
    end
  end
end
