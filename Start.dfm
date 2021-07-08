object FrmStart: TFrmStart
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Car transport'
  ClientHeight = 501
  ClientWidth = 801
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  PrintScale = poNone
  Scaled = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object stat1: TStatusBar
    Left = 0
    Top = 482
    Width = 801
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object RzPnl1: TRzPanel
    Left = 0
    Top = 0
    Width = 801
    Height = 44
    Align = alTop
    BorderInner = fsFlat
    BorderOuter = fsFlat
    Color = clHighlight
    TabOrder = 1
    object img1: TImage
      Left = 2
      Top = 2
      Width = 40
      Height = 40
      Align = alLeft
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
        002808060000008CFEB86D000000634944415478DAEDD3310A00300843D17AFF
        43B76E8E150A31D09F295B9E83B1CC13D3008052E0CE5C0ED84B90C80004E80A
        54EC7780D501FE06B47F128000A7818AFD0EB03A40806640FB2F0608701AA8D8
        EF00AB03FC0D68FF2400018E021D03F0350736D88B2980FFC434000000004945
        4E44AE426082}
      OnClick = img1Click
    end
  end
  object RzPnl2: TRzPanel
    Left = 200
    Top = 44
    Width = 601
    Height = 438
    Margins.Top = 5
    Align = alClient
    BorderOuter = fsNone
    BorderColor = clHighlight
    BorderWidth = 2
    TabOrder = 2
    object rzlbl1: TRzLabel
      Left = 24
      Top = 48
      Width = 150
      Height = 23
      Caption = 'Dzisiejsza data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRecessed
    end
    object rzlbl2: TRzLabel
      Left = 24
      Top = 120
      Width = 84
      Height = 23
      Caption = 'Godzina:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRecessed
    end
    object rzlbl4: TRzLabel
      Left = 320
      Top = 120
      Width = 44
      Height = 23
      Caption = 'Czas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
    end
    object rzlbl5: TRzLabel
      Left = 320
      Top = 48
      Width = 44
      Height = 23
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRecessed
    end
  end
  object spltVw1: TSplitView
    Left = 0
    Top = 44
    Width = 200
    Height = 438
    Margins.Top = 5
    Color = clCream
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 3
    object ctgryBtns1: TCategoryButtons
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 194
      Height = 209
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
              Caption = 'Ustal kurs [F2]'
              OnClick = ctgryBtns1Categories0Items0Click
            end
            item
              Caption = 'Historia [F3]'
              OnClick = ctgryBtns1Categories0Items1Click
            end
            item
              Caption = 'Definicje [F4]'
              OnClick = ctgryBtns1Categories0Items2Click
            end
            item
              Caption = 'Ustawienia [F11]'
              OnClick = ctgryBtns1Categories0Items3Click
            end
            item
              Caption = 'Grafik [F6]'
              OnClick = ctgryBtns1Categories0Items4Click
            end
            item
            end
            item
              Caption = 'Car transport [F10]'
              OnClick = ctgryBtns1Categories0Items6Click
            end
            item
              Caption = 'Koniec pracy [F12]'
              OnClick = ctgryBtns1Categories0Items5Click
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
  object tmr1: TTimer
    Interval = 500
    OnTimer = tmr1Timer
    Left = 720
    Top = 417
  end
end
