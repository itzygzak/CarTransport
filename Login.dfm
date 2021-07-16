object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'carTransport - Login'
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
  OnShow = FormShow
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
    object rzlbl1: TRzLabel
      Left = 9
      Top = 40
      Width = 141
      Height = 19
      Caption = 'Wersja programu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6697728
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRecessed
    end
    object rzlbl2: TRzLabel
      Left = 9
      Top = 94
      Width = 49
      Height = 19
      Caption = 'z dnia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6697728
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRecessed
    end
    object rzlblWersja: TRzLabel
      Left = 9
      Top = 65
      Width = 73
      Height = 16
      Caption = 'rzlblWersja'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMoneyGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRaised
    end
    object rzlblData: TRzLabel
      Left = 8
      Top = 119
      Width = 58
      Height = 16
      Caption = 'rzlblData'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMoneyGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRaised
    end
    object rzlbl5: TRzLabel
      Left = 9
      Top = 457
      Width = 186
      Height = 16
      Cursor = crHandPoint
      Caption = 'Sprawd'#378' czy s'#261' aktualizacje.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6697728
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = rzlbl5Click
      OnMouseDown = rzlbl5MouseDown
      OnMouseUp = rzlbl5MouseUp
      OnMouseEnter = rzlbl5MouseEnter
      OnMouseLeave = rzlbl5MouseLeave
      LightTextStyle = True
      TextStyle = tsRaised
    end
    object rzlbl6: TRzLabel
      Left = 128
      Top = 505
      Width = 95
      Height = 16
      Cursor = crHandPoint
      Caption = 'www.zyg-zak.eu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = rzlbl6Click
      OnMouseDown = rzlbl6MouseDown
      OnMouseUp = rzlbl6MouseUp
      OnMouseEnter = rzlbl6MouseEnter
      OnMouseLeave = rzlbl6MouseLeave
    end
    object rzlbl7: TRzLabel
      Left = 9
      Top = 175
      Width = 34
      Height = 16
      Caption = 'Firma'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMoneyGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRaised
    end
    object rzlbl8: TRzLabel
      Left = 8
      Top = 505
      Width = 106
      Height = 16
      Caption = 'Odwied'#378' stron'#281':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6697728
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRaised
    end
    object rzlbl9: TRzLabel
      Left = 9
      Top = 150
      Width = 46
      Height = 19
      Caption = 'Firma'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6697728
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRaised
    end
  end
  object rzpnl1: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 297
    Height = 566
    Align = alClient
    BorderInner = fsBump
    BorderOuter = fsBump
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 2
    object rzlbl3: TRzLabel
      Left = 47
      Top = 23
      Width = 187
      Height = 33
      Caption = 'Car Transport'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16737843
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRecessed
    end
    object rzlbl4: TRzLabel
      Left = 66
      Top = 80
      Width = 156
      Height = 16
      Caption = 'Logowanie do programu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16737843
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRecessed
    end
    object btnKoniec: TButton
      Left = 80
      Top = 408
      Width = 120
      Height = 40
      Caption = 'Koniec pracy'
      TabOrder = 4
      OnClick = btnKoniecClick
    end
    object btnLogin: TButton
      Left = 80
      Top = 313
      Width = 120
      Height = 40
      Caption = 'Login'
      TabOrder = 3
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
      PasswordChar = '*'
      TabOrder = 2
      OnKeyPress = edtHasloKeyPress
    end
    object edtLogin: TEdit
      Left = 80
      Top = 144
      Width = 120
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edtLoginChange
      OnKeyPress = edtLoginKeyPress
    end
    object chk1: TCheckBox
      Left = 80
      Top = 192
      Width = 120
      Height = 17
      Caption = 'Pami'#281'taj login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      StyleElements = []
    end
  end
  object smVrsnf1: TSMVersionInfo
    FileName = 'carTransp.exe'
    Left = 168
    Top = 289
  end
end
