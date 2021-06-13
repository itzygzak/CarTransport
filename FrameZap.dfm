object FrameZapisz: TFrameZapisz
  Left = 0
  Top = 0
  Width = 201
  Height = 443
  TabOrder = 0
  object spltVw1: TSplitView
    Left = 0
    Top = 0
    Width = 200
    Height = 443
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 0
    ExplicitLeft = 128
    ExplicitTop = 152
    ExplicitHeight = 41
    object ctgryBtns1: TCategoryButtons
      Left = 0
      Top = 0
      Width = 200
      Height = 193
      Align = alTop
      ButtonFlow = cbfVertical
      ButtonOptions = [boFullSize, boGradientFill, boShowCaptions, boVerticalCategoryCaptions]
      Categories = <
        item
          Caption = 'Zapisywanie'
          Color = 16777194
          Collapsed = False
          Items = <
            item
              Caption = 'Zapisz'
            end
            item
              Caption = 'Anuluj'
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
end
