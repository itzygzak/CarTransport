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
    Height = 41
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object img1: TImage
      Left = 1
      Top = 1
      Width = 40
      Height = 39
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
      ExplicitLeft = 0
      ExplicitTop = 3
      ExplicitHeight = 40
    end
  end
  object spltvw1: TSplitView
    Left = 0
    Top = 41
    Width = 0
    Height = 572
    Color = clCream
    Opened = False
    OpenedWidth = 308
    Placement = svpLeft
    TabOrder = 1
    ExplicitTop = 51
    ExplicitHeight = 562
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
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 297
    Height = 566
    Align = alClient
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 2
    ExplicitLeft = 6
    ExplicitTop = 41
    ExplicitWidth = 303
    ExplicitHeight = 572
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
