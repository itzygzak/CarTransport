object FrmGrafik: TFrmGrafik
  Left = 0
  Top = 0
  Caption = 'Grafik'
  ClientHeight = 415
  ClientWidth = 909
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
    Width = 909
    Height = 41
    Align = alTop
    BorderOuter = fsNone
    Color = 16737843
    TabOrder = 0
    ExplicitLeft = 512
    ExplicitTop = 152
    ExplicitWidth = 185
    object img1: TImage
      Left = 859
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
      OnClick = img1Click
      ExplicitLeft = 696
      ExplicitTop = 16
      ExplicitHeight = 50
    end
  end
  object rzpnl2: TRzPanel
    Left = 0
    Top = 41
    Width = 709
    Height = 374
    Align = alClient
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 64
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
  object spltVw1: TSplitView
    Left = 709
    Top = 41
    Width = 200
    Height = 374
    Color = clBlack
    OpenedWidth = 200
    Placement = svpRight
    TabOrder = 2
    ExplicitLeft = 640
    ExplicitTop = 112
    ExplicitHeight = 41
    object ctgryBtns1: TCategoryButtons
      Left = 0
      Top = 0
      Width = 200
      Height = 137
      Align = alTop
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonOptions = [boFullSize, boGradientFill, boShowCaptions, boVerticalCategoryCaptions]
      Categories = <
        item
          Caption = 'Wybierz z menu'
          Color = 16777194
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
      HotButtonColor = clRed
      RegularButtonColor = clWhite
      SelectedButtonColor = 15132390
      TabOrder = 0
    end
  end
end
