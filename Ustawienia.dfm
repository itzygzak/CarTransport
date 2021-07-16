object FrmUstawienia: TFrmUstawienia
  Left = 0
  Top = 0
  Caption = 'carTransport - Ustawienia programu'
  ClientHeight = 466
  ClientWidth = 858
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object rzpnl1: TRzPanel
    Left = 0
    Top = 0
    Width = 858
    Height = 41
    Align = alTop
    BorderOuter = fsNone
    Color = clHighlight
    TabOrder = 0
    object img1: TImage
      Left = 818
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
      ExplicitHeight = 40
    end
  end
  object spltVw1: TSplitView
    Left = 658
    Top = 41
    Width = 200
    Height = 425
    Margins.Top = 5
    Color = clCream
    OpenedWidth = 200
    Placement = svpRight
    TabOrder = 1
    object ctgryBtns1: TCategoryButtons
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 194
      Height = 161
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
              Caption = 'Zapisz'
              OnClick = ctgryBtns1Categories0Items0Click
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
  end
  object rzpnl2: TRzPanel
    Left = 0
    Top = 41
    Width = 658
    Height = 425
    Align = alClient
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 2
    object rzPgCntrl1: TRzPageControl
      AlignWithMargins = True
      Left = 5
      Top = 7
      Width = 648
      Height = 413
      Hint = ''
      Margins.Top = 5
      ActivePage = rztbshtTabSheet2
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabIndex = 1
      TabOrder = 0
      TabStyle = tsBackSlant
      FixedDimension = 22
      object rztbshtTabSheet1: TRzTabSheet
        Caption = 'Definuj u'#380'ytkownik'#243'w'
        object rzGrpBx1: TRzGroupBox
          Left = 16
          Top = 32
          Width = 577
          Height = 329
          Caption = 'Wprowad'#378
          GroupStyle = gsUnderline
          TabOrder = 0
          object rzlbl1: TRzLabel
            Left = 12
            Top = 32
            Width = 34
            Height = 16
            Caption = 'Login'
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
            Left = 12
            Top = 68
            Width = 36
            Height = 16
            Caption = 'Has'#322'o'
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
            Left = 12
            Top = 104
            Width = 27
            Height = 16
            Caption = 'Imi'#281
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl4: TRzLabel
            Left = 12
            Top = 140
            Width = 71
            Height = 16
            Caption = 'Drugie imi'#281
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl5: TRzLabel
            Left = 12
            Top = 176
            Width = 59
            Height = 16
            Caption = 'Nazwisko'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl6: TRzLabel
            Left = 12
            Top = 212
            Width = 72
            Height = 16
            Caption = 'Nr telefonu'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl7: TRzLabel
            Left = 12
            Top = 248
            Width = 74
            Height = 16
            Caption = 'Stanowisko'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzEdtLogin: TRzEdit
            Left = 160
            Top = 24
            Width = 121
            Height = 24
            Text = ''
            TabOrder = 0
          end
          object rzEdtHaslo: TRzEdit
            Left = 160
            Top = 60
            Width = 121
            Height = 24
            Text = ''
            TabOrder = 1
          end
          object rzEdtImie: TRzEdit
            Left = 160
            Top = 96
            Width = 121
            Height = 24
            Text = ''
            TabOrder = 2
          end
          object rzEdtDrugieImie: TRzEdit
            Left = 160
            Top = 132
            Width = 121
            Height = 24
            Text = ''
            TabOrder = 3
          end
          object rzEdtNazwisko: TRzEdit
            Left = 160
            Top = 168
            Width = 121
            Height = 24
            Text = ''
            TabOrder = 4
          end
          object rzEdtTelefon: TRzEdit
            Left = 160
            Top = 204
            Width = 121
            Height = 24
            Text = ''
            TabOrder = 5
          end
          object rzCmBx1: TRzComboBox
            Left = 160
            Top = 240
            Width = 145
            Height = 24
            TabOrder = 6
            Items.Strings = (
              'Kierownik'
              'Sprzedawca'
              'Podczaszy'
              'Stolnik'
              'Klucznik'
              'Podkomorzy'
              'Cze'#347'nik'
              #321'owczy'
              'Miecznik'
              'Skarbnik'
              'Wojski')
          end
        end
      end
      object rztbshtTabSheet2: TRzTabSheet
        OnShow = rztbshtTabSheet2Show
        Caption = 'Przegl'#261'daj'
        object rzGrpBx2: TRzGroupBox
          Left = 3
          Top = 16
          Width = 601
          Height = 115
          Caption = 'Wyszukaj u'#380'ytkownik'#243'w'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          GroupStyle = gsUnderline
          ParentFont = False
          TabOrder = 0
          object rzEdtSzukaj: TRzEdit
            Left = 8
            Top = 48
            Width = 257
            Height = 27
            Text = ''
            TabOrder = 0
          end
        end
        object rzpnl3: TRzPanel
          Left = 0
          Top = 137
          Width = 644
          Height = 250
          Align = alBottom
          BorderOuter = fsNone
          BorderColor = 16737843
          BorderWidth = 2
          TabOrder = 1
          object rzDbGrd1: TRzDBGrid
            Left = 2
            Top = 2
            Width = 640
            Height = 246
            Align = alClient
            DataSource = DataModule1.dsUzyt
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
      end
      object rztbshtTabSheet3: TRzTabSheet
        Caption = 'Zarz'#261'dzaj'
        object rzlbl8: TRzLabel
          Left = 40
          Top = 32
          Width = 285
          Height = 19
          Caption = 'Zarz'#261'dzanie kopi'#261' bezpiecze'#324'stwa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16737843
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          LightTextStyle = True
          TextStyle = tsRaised
        end
      end
    end
  end
end
