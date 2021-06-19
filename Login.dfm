object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 613
  ClientWidth = 303
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 303
    Height = 51
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object img1: TImage
      Left = 0
      Top = 3
      Width = 48
      Height = 48
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
        003008060000005702F98700000006624B474400FF00FF00FFA0BDA793000000
        7E4944415478DAEDD3310D80401005514E0022B08720EC210201D0120A9ACDE5
        6736331DA1B87DC51F0BBC913E4040FA0001E903A601B6E3BADFDFE7BE8EBFFF
        B3FBBE2F40C06C002501E9FA02F0231620A008A024205D5F007EC40204140194
        04A4EB0BC08F58808022809280747D01F8110B1050045012904E403A3CE0019F
        D1A0318F8304C10000000049454E44AE426082}
      OnClick = img1Click
    end
  end
  object spltvw1: TSplitView
    Left = 0
    Top = 51
    Width = 0
    Height = 562
    Color = clCream
    Opened = False
    OpenedWidth = 308
    Placement = svpLeft
    TabOrder = 1
    object rzlbl1: TRzLabel
      Left = 25
      Top = 40
      Width = 113
      Height = 16
      Caption = 'Wersja programu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6697728
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRecessed
    end
    object rzlbl2: TRzLabel
      Left = 25
      Top = 96
      Width = 38
      Height = 16
      Caption = 'z dnia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6697728
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRecessed
    end
    object lnkLbl1: TLinkLabel
      Left = 25
      Top = 505
      Width = 79
      Height = 17
      Caption = 'Odwied'#378' stron'#281
      Color = clHighlight
      ParentColor = False
      TabOrder = 0
    end
  end
  object rzpnl1: TRzPanel
    Left = 0
    Top = 51
    Width = 303
    Height = 562
    Align = alClient
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 2
    object btnKoniec: TButton
      Left = 80
      Top = 408
      Width = 120
      Height = 40
      Caption = 'Koniec pracy'
      TabOrder = 0
      OnClick = btnKoniecClick
    end
    object btnLogin: TButton
      Left = 80
      Top = 313
      Width = 120
      Height = 40
      Caption = 'Login'
      TabOrder = 1
      OnClick = btnLoginClick
    end
    object edtHaslo: TEdit
      Left = 80
      Top = 240
      Width = 120
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '*Adkks'
    end
    object edtLogin: TEdit
      Left = 80
      Top = 120
      Width = 120
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'ADMIN'
    end
    object chk1: TCheckBox
      Left = 80
      Top = 184
      Width = 97
      Height = 17
      Caption = 'Pami'#281'taj login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
end
