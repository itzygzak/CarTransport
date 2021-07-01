object FrmUstalKurs: TFrmUstalKurs
  Left = 0
  Top = 0
  Caption = 'Ustal kurs'
  ClientHeight = 637
  ClientWidth = 1129
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
  object RzPnl1: TRzPanel
    Left = 0
    Top = 0
    Width = 1129
    Height = 41
    Align = alTop
    BorderInner = fsFlat
    BorderOuter = fsFlat
    Color = clHighlight
    TabOrder = 0
    object img1: TImage
      Left = 1087
      Top = 2
      Width = 40
      Height = 37
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
      ExplicitLeft = 1095
      ExplicitHeight = 40
    end
  end
  object spltVw1: TSplitView
    AlignWithMargins = True
    Left = 926
    Top = 44
    Width = 200
    Height = 590
    Color = clCream
    OpenedWidth = 200
    Placement = svpRight
    TabOrder = 1
    object ctgryBtns1: TCategoryButtons
      Left = 0
      Top = 0
      Width = 200
      Height = 161
      Align = alTop
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonOptions = [boFullSize, boGradientFill, boShowCaptions, boVerticalCategoryCaptions]
      Categories = <
        item
          Caption = 'Menu Zapisz'
          Color = clMoneyGreen
          Collapsed = False
          Items = <
            item
              Caption = 'Zapisz'
            end
            item
              Caption = 'Dukuj'
            end
            item
              Caption = 'Anuluj'
            end
            item
            end
            item
              Caption = 'Zamknij'
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
    object rzBtnUstal: TRzButton
      Left = 3
      Top = 498
      Width = 187
      Height = 57
      Caption = 'Ustal'
      TabOrder = 1
      OnClick = rzBtnUstalClick
    end
  end
  object RzPnl2: TRzPanel
    Left = 0
    Top = 41
    Width = 923
    Height = 596
    Align = alClient
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 2
    ExplicitLeft = 360
    ExplicitTop = 112
    ExplicitWidth = 185
    ExplicitHeight = 41
    object rzln1: TRzLine
      Left = 2
      Top = 394
      Width = 918
      Height = 20
      LineColor = clSkyBlue
      LineWidth = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object rzGrpBoxDataWys: TRzGroupBox
      Left = 2
      Top = 2
      Width = 919
      Align = alTop
      Caption = 'Ustaw dat'#281' i godzin'#281' wysy'#322'ki'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -16
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      GradientColorStyle = gcsMSOffice
      GroupStyle = gsBanner
      TabOrder = 0
      ExplicitLeft = 320
      ExplicitTop = 48
      ExplicitWidth = 185
      object rzlbl1: TRzLabel
        Left = 16
        Top = 41
        Width = 39
        Height = 19
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRaised
      end
      object rzlbl2: TRzLabel
        Left = 272
        Top = 41
        Width = 66
        Height = 19
        Caption = 'Godzina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRaised
      end
      object rzDtmPckrDataWys: TRzDateTimePicker
        Left = 96
        Top = 39
        Width = 121
        Height = 21
        Date = 44378.000000000000000000
        Format = ''
        Time = 0.910925196760217700
        TabOrder = 0
      end
      object tmPckrCzasWys: TTimePicker
        Left = 352
        Top = 41
        Width = 137
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 1
        Time = 44378.911143634260000000
        TimeFormat = 'hh:mm'
      end
    end
    object rzGrpBoxWgDokum: TRzGroupBox
      Left = 2
      Top = 107
      Width = 919
      Height = 118
      Align = alTop
      Caption = 'Podaj dokument (nr, data, rodzaj)'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -16
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      GradientColorStyle = gcsMSOffice
      GroupStyle = gsBanner
      TabOrder = 1
      object rzlbl3: TRzLabel
        Left = 16
        Top = 48
        Width = 171
        Height = 19
        Caption = 'Dokument sprzeda'#380'y'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRaised
      end
      object rzlbl4: TRzLabel
        Left = 416
        Top = 48
        Width = 51
        Height = 19
        Caption = 'Uwagi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRaised
      end
      object rzMmoUwagi: TRzMemo
        Left = 473
        Top = 48
        Width = 424
        Height = 57
        TabOrder = 0
      end
      object rzEdtWgDokumentu: TRzEdit
        Left = 209
        Top = 48
        Width = 192
        Height = 21
        Text = ''
        TabOrder = 1
      end
    end
  end
end
