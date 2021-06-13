object FrmUstalKurs: TFrmUstalKurs
  Left = 0
  Top = 0
  Caption = 'Ustal kurs'
  ClientHeight = 478
  ClientWidth = 980
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
    Width = 980
    Height = 41
    Align = alTop
    BorderInner = fsFlat
    BorderOuter = fsFlat
    Color = 16737843
    TabOrder = 0
    ExplicitLeft = 552
    ExplicitTop = 24
    ExplicitWidth = 185
  end
  object RzPnl2: TRzPanel
    Left = 0
    Top = 41
    Width = 780
    Height = 437
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 1
    ExplicitLeft = 184
    ExplicitTop = 72
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
  object spltVw1: TSplitView
    Left = 780
    Top = 41
    Width = 200
    Height = 437
    OpenedWidth = 200
    Placement = svpRight
    TabOrder = 2
  end
end
