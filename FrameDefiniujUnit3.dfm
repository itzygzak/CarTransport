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
    BorderWidth = 2
    TabOrder = 0
    object RzPgCntrl1: TRzPageControl
      Left = 4
      Top = 4
      Width = 536
      Height = 362
      Hint = ''
      ActivePage = RzTbshtKierowcy
      Align = alClient
      TabIndex = 0
      TabOrder = 0
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 538
      ExplicitHeight = 364
      FixedDimension = 19
      object RzTbshtKierowcy: TRzTabSheet
        Caption = 'Kierowcy'
        ExplicitWidth = 534
        ExplicitHeight = 341
        object rzlbl1: TRzLabel
          Left = 32
          Top = 32
          Width = 20
          Height = 13
          Caption = 'Imi'#281
        end
        object rzlbl2: TRzLabel
          Left = 32
          Top = 80
          Width = 52
          Height = 13
          Caption = 'Drugie imi'#281
        end
        object rzlbl3: TRzLabel
          Left = 32
          Top = 112
          Width = 44
          Height = 13
          Caption = 'Nazwisko'
        end
        object rzlbl10: TRzLabel
          Left = 32
          Top = 160
          Width = 59
          Height = 13
          Caption = 'Prawo jazdy'
        end
        object cbbPrawko: TComboBox
          Left = 144
          Top = 157
          Width = 145
          Height = 21
          TabOrder = 0
          Text = 'cbbPrawko'
        end
        object edtImie: TEdit
          Left = 144
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 1
          Text = 'edtImie'
        end
        object edtDrugieImie: TEdit
          Left = 144
          Top = 80
          Width = 121
          Height = 21
          TabOrder = 2
          Text = 'edtDrugieImie'
        end
        object edtNazwisko: TEdit
          Left = 144
          Top = 120
          Width = 121
          Height = 21
          TabOrder = 3
          Text = 'edtNazwisko'
        end
      end
      object RzTbshtSamochody: TRzTabSheet
        Caption = 'Samochody'
        ExplicitLeft = 2
        ExplicitTop = 21
        ExplicitWidth = 534
        ExplicitHeight = 341
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
          Width = 20
          Height = 13
          Caption = 'HDS'
        end
        object rzlbl11: TRzLabel
          Left = 23
          Top = 216
          Width = 30
          Height = 13
          Caption = 'Winda'
        end
        object rzlbl12: TRzLabel
          Left = 24
          Top = 272
          Width = 49
          Height = 13
          Caption = 'Przyczepa'
        end
        object edtMarka: TEdit
          Left = 104
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'edtMarka'
        end
        object edtTyp: TEdit
          Left = 112
          Top = 64
          Width = 121
          Height = 21
          TabOrder = 1
          Text = 'edtTyp'
        end
        object edtLadownosc: TEdit
          Left = 120
          Top = 112
          Width = 121
          Height = 21
          TabOrder = 2
          Text = 'edtLadownosc'
        end
        object rgHds: TRadioGroup
          Left = 104
          Top = 155
          Width = 201
          Height = 33
          Caption = ' Czy HDS '
          Columns = 2
          Items.Strings = (
            'TAK'
            'NIE')
          TabOrder = 3
        end
        object rgPrzyczepa: TRadioGroup
          Left = 104
          Top = 272
          Width = 217
          Height = 66
          Caption = 'Przyczepa (typ) '
          Columns = 2
          Items.Strings = (
            'Brak'
            'Naczepa'
            'Przyczepa'
            'Ma'#322'a przyczepa')
          TabOrder = 4
        end
        object rgWinda: TRadioGroup
          Left = 104
          Top = 209
          Width = 185
          Height = 40
          Caption = 'Czy Winda '
          Columns = 2
          Items.Strings = (
            'Tak'
            'Nie')
          TabOrder = 5
        end
      end
      object RzTbshtMiejscowosci: TRzTabSheet
        Caption = 'Miejscowo'#347'ci'
        ExplicitWidth = 534
        ExplicitHeight = 341
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
        object lbl1: TLabel
          Left = 16
          Top = 112
          Width = 16
          Height = 13
          Caption = 'lbl1'
        end
        object edtKod: TEdit
          Left = 168
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'edtKod'
        end
        object edtMiejscowosc: TEdit
          Left = 152
          Top = 72
          Width = 121
          Height = 21
          TabOrder = 1
          Text = 'edtMiejscowosc'
        end
      end
    end
  end
end
