object FrmCarTransport: TFrmCarTransport
  Left = 0
  Top = 0
  Caption = 'FrmCarTransport'
  ClientHeight = 419
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RzPnl1: TRzPanel
    Left = 0
    Top = 0
    Width = 852
    Height = 41
    Align = alTop
    BorderOuter = fsNone
    Color = 16737843
    TabOrder = 0
    ExplicitLeft = 464
    ExplicitTop = 48
    ExplicitWidth = 185
    object img1: TImage
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 40
      Height = 35
      Align = alLeft
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
        002808060000008CFEB86D000000634944415478DAEDD3310A00300843D17AFF
        43B76E8E150A31D09F295B9E83B1CC13D3008052E0CE5C0ED84B90C80004E80A
        54EC7780D501FE06B47F128000A7818AFD0EB03A40806640FB2F0608701AA8D8
        EF00AB03FC0D68FF2400018E021D03F0350736D88B2980FFC434000000004945
        4E44AE426082}
      ExplicitHeight = 40
    end
  end
  object RzPnl2: TRzPanel
    Left = 200
    Top = 41
    Width = 652
    Height = 378
    Align = alClient
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 1
    ExplicitLeft = 224
    ExplicitTop = 208
    ExplicitWidth = 185
    ExplicitHeight = 41
    object RzPgCntrl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 648
      Height = 374
      Hint = ''
      ActivePage = RzTbshtLicencja
      Align = alClient
      TabIndex = 0
      TabOrder = 0
      ExplicitLeft = 192
      ExplicitTop = 104
      ExplicitWidth = 300
      ExplicitHeight = 150
      FixedDimension = 19
      object RzTbshtLicencja: TRzTabSheet
        Caption = 'RzTbshtLicencja'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object RzTbshtOprogramie: TRzTabSheet
        Caption = 'RzTbshtOprogramie'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
  end
  object spltVw1: TSplitView
    Left = 0
    Top = 41
    Width = 200
    Height = 378
    Color = clCream
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 2
    ExplicitLeft = 632
    ExplicitTop = 136
    ExplicitHeight = 41
    object ctgryBtns1: TCategoryButtons
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 194
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
              Caption = 'Licencja'
            end
            item
              Caption = 'O programie'
            end
            item
            end
            item
              Caption = 'Zamknij okno'
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
