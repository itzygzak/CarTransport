object FrmCarTransport: TFrmCarTransport
  Left = 0
  Top = 0
  Caption = 'CarTransport  - O programie'
  ClientHeight = 419
  ClientWidth = 852
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
    Width = 852
    Height = 41
    Align = alTop
    BorderOuter = fsNone
    Color = 16737843
    TabOrder = 0
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
      OnClick = img1Click
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
    object RzPgCntrl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 648
      Height = 374
      Hint = ''
      ActivePage = RzTbshtTabSheet1
      Align = alClient
      TabIndex = 2
      TabOrder = 0
      FixedDimension = 19
      object RzTbshtLicencja: TRzTabSheet
        Caption = 'Licencja dla...'
        object rzlbl1: TRzLabel
          Left = 274
          Top = 10
          Width = 79
          Height = 16
          Caption = 'Nazwa firmy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6723891
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          LightTextStyle = True
          TextStyle = tsRaised
        end
        object rzlbl2: TRzLabel
          Left = 112
          Top = 58
          Width = 29
          Height = 16
          Caption = 'Ulica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6723891
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          LightTextStyle = True
          TextStyle = tsRaised
        end
        object rzlbl3: TRzLabel
          Left = 274
          Top = 59
          Width = 91
          Height = 16
          Alignment = taCenter
          Caption = 'Kod pocztowy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6723891
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          LightTextStyle = True
          TextStyle = tsRaised
        end
        object rzlbl4: TRzLabel
          Left = 480
          Top = 58
          Width = 81
          Height = 16
          Caption = 'Miejscowo'#347#263
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6723891
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          LightTextStyle = True
          TextStyle = tsRaised
        end
        object rzlbl5: TRzLabel
          Left = 304
          Top = 107
          Width = 21
          Height = 16
          Caption = 'NIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6723891
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          LightTextStyle = True
          TextStyle = tsRaised
        end
        object rzlbl6: TRzLabel
          Left = 111
          Top = 158
          Width = 30
          Height = 16
          Caption = 'Tel 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6723891
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          LightTextStyle = True
          TextStyle = tsRaised
        end
        object rzlbl7: TRzLabel
          Left = 480
          Top = 158
          Width = 30
          Height = 16
          Caption = 'Tel 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6723891
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          LightTextStyle = True
          TextStyle = tsRaised
        end
        object rzlbl8: TRzLabel
          Left = 128
          Top = 211
          Width = 39
          Height = 16
          Caption = 'e-mail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6723891
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          LightTextStyle = True
          TextStyle = tsRaised
        end
        object rzlbl9: TRzLabel
          Left = 432
          Top = 211
          Width = 81
          Height = 16
          Caption = 'Strona www'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6723891
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          LightTextStyle = True
          TextStyle = tsRaised
        end
        object rzlbl10: TRzLabel
          Left = 52
          Top = 274
          Width = 101
          Height = 16
          Caption = 'Klucz licencyjny'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6723891
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          LightTextStyle = True
          TextStyle = tsRaised
        end
        object rzlbl11: TRzLabel
          Left = 408
          Top = 274
          Width = 102
          Height = 16
          Caption = 'Data rejestracji'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6723891
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          LightTextStyle = True
          TextStyle = tsRaised
        end
        object rzEdtNazwa: TRzEdit
          Left = 16
          Top = 32
          Width = 609
          Height = 21
          Text = ''
          Alignment = taCenter
          TabOrder = 0
        end
        object rzEdtUlica: TRzEdit
          Left = 16
          Top = 80
          Width = 217
          Height = 21
          Text = ''
          TabOrder = 1
        end
        object rzEdtKod: TRzEdit
          Left = 256
          Top = 80
          Width = 121
          Height = 21
          Text = ''
          Alignment = taCenter
          TabOrder = 2
        end
        object rzEdtMiejsc: TRzEdit
          Left = 400
          Top = 80
          Width = 225
          Height = 21
          Text = ''
          TabOrder = 3
        end
        object rzEdtNip: TRzEdit
          Left = 216
          Top = 129
          Width = 209
          Height = 21
          Text = ''
          TabOrder = 4
        end
        object rzEdtTel1: TRzEdit
          Left = 16
          Top = 180
          Width = 241
          Height = 21
          Text = ''
          TabOrder = 5
        end
        object rzEdtTel2: TRzEdit
          Left = 400
          Top = 180
          Width = 225
          Height = 21
          Text = ''
          TabOrder = 6
        end
        object rzEdtEmail: TRzEdit
          Left = 14
          Top = 233
          Width = 283
          Height = 21
          Text = ''
          TabOrder = 7
        end
        object rzEdtStrona: TRzEdit
          Left = 312
          Top = 233
          Width = 313
          Height = 21
          Text = ''
          TabOrder = 8
        end
        object rzEdtKlucz: TRzEdit
          Left = 16
          Top = 296
          Width = 329
          Height = 21
          Text = ''
          TabOrder = 9
        end
        object rzEdtDataRej: TRzEdit
          Left = 368
          Top = 296
          Width = 257
          Height = 21
          Text = ''
          TabOrder = 10
        end
      end
      object RzTbshtOprogramie: TRzTabSheet
        Caption = 'Lista zmian'
        object rzMmo1: TRzMemo
          Left = 0
          Top = 0
          Width = 644
          Height = 351
          Align = alClient
          Lines.Strings = (
            'O programie'
            '')
          TabOrder = 0
        end
      end
      object RzTbshtTabSheet1: TRzTabSheet
        Caption = 'O programie'
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
    object ctgryBtns1: TCategoryButtons
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 194
      Height = 134
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
              OnClick = ctgryBtns1Categories0Items0Click
            end
            item
              Caption = 'Lista zmian'
              OnClick = ctgryBtns1Categories0Items1Click
            end
            item
              Caption = 'O programie'
              OnClick = ctgryBtns1Categories0Items2Click
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
end
