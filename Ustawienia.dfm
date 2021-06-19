object FrmUstawienia: TFrmUstawienia
  Left = 0
  Top = 0
  Caption = 'Ustawienia programu'
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
      Left = 808
      Top = 0
      Width = 50
      Height = 41
      Align = alRight
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
        003208060000001E3F88B100000006624B474400FF00FF00FFA0BDA793000001
        974944415478DAED98B14AC35014867B4BD2A120A583AB2034AE160B4E42157C
        82429736898383B3A07B1F40717670B049BA04FA0482569C84425D4D71707429
        45BA3421F10F74D0804302F6DE5ECFB7FC97339D2F092797C37292C078374022
        24223824221AF28BB45AAD1AA2CCBBC104935EAF374C25D26EB7EF11FBBC3B4F
        F0E038CE416A11C6D8C0B6ED0EEFEE63745DEF445154CF223240945555DDF57D
        BF11D770EEE37C833CE6507BC67102917AEA3782986A9AD6188FC7D5B856A954
        46381F216F975DF33CAF8F63E95F7F5AF288E464985AA6696E0541B0C6BBF3EF
        288AF2D9ED765F5389AC1A24221AF28B60DC5D63DCD57837F8A359C686F81D9C
        A412598CDF003277BC051612870825D37F249FCF8F2CCB3A6D369BA5B8E6BAEE
        1463790323F07DD935C330AEC230AC66117944ECCCE7F3F542A1708E2712158B
        C5CBD96CF686DA2687DA07FA1966BA344A7345914604A142E689B7440C24F610
        7E16910BC4366F81042F10394B25B26A908868C82F420BBABF851674B4A0A305
        DD2FD0A5519AA9450B3A4E9088689088689088684823F205C0A42551AB7000CA
        0000000049454E44AE426082}
      ExplicitLeft = 608
      ExplicitTop = 24
      ExplicitHeight = 50
    end
  end
  object spltVw1: TSplitView
    Left = 658
    Top = 41
    Width = 200
    Height = 425
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
              'Stolnik'
              'Klucznik'
              'Podkomorzy'
              'Podczaszy'
              'Cze'#347'nik'
              #321'owczy'
              'Miecznik'
              'Skarbnik'
              'Wojski')
          end
        end
      end
      object rztbshtTabSheet2: TRzTabSheet
        Caption = 'Przegl'#261'daj'
        object rzGrpBx2: TRzGroupBox
          Left = 16
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
      end
    end
  end
end
