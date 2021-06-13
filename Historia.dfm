object FrmHistoria: TFrmHistoria
  Left = 0
  Top = 0
  Caption = 'Historia'
  ClientHeight = 424
  ClientWidth = 826
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RzPnl1: TRzPanel
    Left = 0
    Top = 0
    Width = 826
    Height = 41
    Align = alTop
    BorderOuter = fsNone
    BorderWidth = 2
    Color = 16737843
    TabOrder = 0
    ExplicitLeft = 472
    ExplicitTop = 40
    ExplicitWidth = 185
  end
  object RzPnl2: TRzPanel
    Left = 0
    Top = 41
    Width = 826
    Height = 136
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 1
    object rzlbl1: TRzLabel
      Left = 24
      Top = 24
      Width = 103
      Height = 19
      Caption = 'Wyszukaj od'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16737843
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRecessed
    end
    object rzlbl2: TRzLabel
      Left = 376
      Top = 24
      Width = 20
      Height = 19
      Caption = 'do'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16737843
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRecessed
    end
    object rzlbl3: TRzLabel
      Left = 24
      Top = 78
      Width = 133
      Height = 19
      Caption = 'Wprowad'#378' tekst'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16737843
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      LightTextStyle = True
      TextStyle = tsRecessed
    end
    object rzDtmPckrOd: TRzDateTimePicker
      Left = 152
      Top = 22
      Width = 186
      Height = 21
      Date = 44360.000000000000000000
      Format = ''
      Time = 0.741989780093717900
      TabOrder = 0
    end
    object rzDtmPckrDo: TRzDateTimePicker
      Left = 402
      Top = 22
      Width = 186
      Height = 21
      Date = 44360.000000000000000000
      Format = ''
      Time = 0.742249918977904600
      TabOrder = 1
    end
    object rzEdtWartosc: TRzEdit
      Left = 176
      Top = 80
      Width = 220
      Height = 21
      Text = ''
      TabOrder = 2
    end
  end
  object RzPnl3: TRzPanel
    Left = 0
    Top = 183
    Width = 826
    Height = 241
    Align = alBottom
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 2
    object RzDBGrd1: TRzDBGrid
      Left = 2
      Top = 2
      Width = 822
      Height = 237
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
