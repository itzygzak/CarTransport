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
    Color = 16737843
    TabOrder = 0
    ExplicitLeft = 632
    ExplicitTop = 40
    ExplicitWidth = 185
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
    Color = clBlack
    OpenedWidth = 200
    Placement = svpRight
    TabOrder = 1
    ExplicitLeft = 520
    ExplicitTop = 120
    ExplicitHeight = 41
    object ctgryBtns1: TCategoryButtons
      Left = 0
      Top = 0
      Width = 200
      Height = 129
      Align = alTop
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonOptions = [boFullSize, boGradientFill, boShowCaptions, boVerticalCategoryCaptions]
      Categories = <
        item
          Caption = 'Menu'
          Color = 16771818
          Collapsed = False
          Items = <
            item
              Caption = 'Zapisz'
            end
            item
              Caption = 'Anuluj'
            end
            item
            end
            item
              Caption = 'Zamknij'
            end>
        end>
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
    ExplicitLeft = 328
    ExplicitTop = 72
    ExplicitWidth = 185
    ExplicitHeight = 41
    object rzPgCntrl1: TRzPageControl
      AlignWithMargins = True
      Left = 5
      Top = 7
      Width = 648
      Height = 413
      Hint = ''
      Margins.Top = 5
      ActivePage = rztbshtTabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabIndex = 0
      TabOrder = 0
      TabStyle = tsBackSlant
      ExplicitLeft = -2
      ExplicitTop = 6
      ExplicitWidth = 654
      ExplicitHeight = 421
      FixedDimension = 22
      object rztbshtTabSheet1: TRzTabSheet
        Caption = 'rztbshtTabSheet1'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object rztbshtTabSheet2: TRzTabSheet
        Caption = 'rztbshtTabSheet2'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object rztbshtTabSheet3: TRzTabSheet
        Caption = 'rztbshtTabSheet3'
        ExplicitTop = 20
        ExplicitWidth = 304
        ExplicitHeight = 127
      end
    end
  end
end
