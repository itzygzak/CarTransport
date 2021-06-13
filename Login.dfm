object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'FrmLogin'
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
    end
  end
  object spltvw1: TSplitView
    Left = 0
    Top = 51
    Width = 200
    Height = 562
    Color = clBlack
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 1
    object edtLogin: TEdit
      Left = 104
      Top = 64
      Width = 120
      Height = 21
      TabOrder = 0
      Text = 'ADMIN'
    end
    object edtHaslo: TEdit
      Left = 104
      Top = 136
      Width = 120
      Height = 21
      TabOrder = 1
      Text = '*Adkks'
    end
    object btnLogin: TButton
      Left = 24
      Top = 200
      Width = 75
      Height = 25
      Caption = 'Login'
      TabOrder = 2
      OnClick = btnLoginClick
    end
    object btnKoniec: TButton
      Left = 32
      Top = 264
      Width = 75
      Height = 25
      Caption = 'Koniec pracy'
      TabOrder = 3
      OnClick = btnKoniecClick
    end
  end
end
