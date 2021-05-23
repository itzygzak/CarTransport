object FrameDef: TFrameDef
  Left = 0
  Top = 0
  Width = 544
  Height = 370
  TabOrder = 0
  object RzPnl1: TRzPanel
    Left = 0
    Top = 0
    Width = 544
    Height = 370
    Align = alClient
    BorderInner = fsFlat
    BorderOuter = fsFlat
    BorderColor = 6723891
    BorderWidth = 1
    TabOrder = 0
    ExplicitLeft = 72
    ExplicitTop = 32
    ExplicitWidth = 185
    ExplicitHeight = 41
    object RzPgCntrl1: TRzPageControl
      Left = 3
      Top = 3
      Width = 538
      Height = 364
      Hint = ''
      ActivePage = RzTbshtSamochody
      Align = alClient
      TabIndex = 1
      TabOrder = 0
      ExplicitLeft = 8
      ExplicitTop = 8
      FixedDimension = 19
      object RzTbshtKierowcy: TRzTabSheet
        Caption = 'Kierowcy'
        ExplicitLeft = 0
        ExplicitTop = 21
        object rzlbl1: TRzLabel
          Left = 32
          Top = 32
          Width = 25
          Height = 13
          Caption = 'rzlbl1'
        end
        object rzlbl2: TRzLabel
          Left = 32
          Top = 80
          Width = 25
          Height = 13
          Caption = 'rzlbl2'
        end
        object rzlbl3: TRzLabel
          Left = 32
          Top = 112
          Width = 25
          Height = 13
          Caption = 'rzlbl3'
        end
      end
      object RzTbshtSamochody: TRzTabSheet
        Caption = 'Samochody'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object rzlbl4: TRzLabel
          Left = 24
          Top = 24
          Width = 29
          Height = 13
          Caption = 'Marka'
        end
        object rzlbl5: TRzLabel
          Left = 24
          Top = 72
          Width = 18
          Height = 13
          Caption = 'Typ'
        end
        object rzlbl6: TRzLabel
          Left = 24
          Top = 112
          Width = 54
          Height = 13
          Caption = #321'adowno'#347#263
        end
        object rzlbl7: TRzLabel
          Left = 24
          Top = 155
          Width = 25
          Height = 13
          Caption = 'rzlbl7'
        end
      end
      object RzTbshtMiejscowosci: TRzTabSheet
        Caption = 'Miejscowo'#347'ci'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object rzlbl8: TRzLabel
          Left = 16
          Top = 72
          Width = 90
          Height = 13
          Caption = 'Dodaj miejscowo'#347#263
        end
        object rzlbl9: TRzLabel
          Left = 16
          Top = 32
          Width = 120
          Height = 13
          Caption = 'Wprowad'#378' kod pocztowy'
        end
      end
    end
  end
end
