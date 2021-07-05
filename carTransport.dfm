object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 419
  ClientWidth = 852
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
    Width = 852
    Height = 41
    Align = alTop
    BorderOuter = fsNone
    Color = 16737843
    TabOrder = 0
    ExplicitLeft = 464
    ExplicitTop = 48
    ExplicitWidth = 185
  end
  object RzPnl2: TRzPanel
    Left = 200
    Top = 41
    Width = 652
    Height = 378
    Align = alClient
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 1
    ExplicitLeft = 224
    ExplicitTop = 208
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
  object spltVw1: TSplitView
    Left = 0
    Top = 41
    Width = 200
    Height = 378
    Color = clCream
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 2
    ExplicitLeft = 632
    ExplicitTop = 136
    ExplicitHeight = 41
    object ctgryBtns1: TCategoryButtons
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 194
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
              Caption = 'Licencja'
            end
            item
              Caption = 'O programie'
            end
            item
            end
            item
              Caption = 'Zamknij okno'
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
end
