object FrmDefinicje: TFrmDefinicje
  Left = 0
  Top = 0
  Caption = 'Zdefiniuj'
  ClientHeight = 476
  ClientWidth = 903
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
    Width = 903
    Height = 41
    Align = alTop
    BorderOuter = fsNone
    Color = clHighlight
    TabOrder = 0
    ExplicitLeft = 400
    ExplicitTop = 208
    ExplicitWidth = 185
  end
  object RzPnl2: TRzPanel
    Left = 0
    Top = 41
    Width = 903
    Height = 435
    Align = alClient
    BorderOuter = fsNone
    BorderColor = clMenuHighlight
    BorderWidth = 2
    TabOrder = 1
    ExplicitLeft = 560
    ExplicitTop = 80
    ExplicitWidth = 185
    ExplicitHeight = 41
    object RzPgCntrl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 899
      Height = 431
      Hint = ''
      ActivePage = RzTbshtPojazdy
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabIndex = 1
      TabOrder = 0
      TabStyle = tsDoubleSlant
      ExplicitLeft = 0
      ExplicitTop = 6
      ExplicitWidth = 786
      ExplicitHeight = 364
      FixedDimension = 25
      object RzTbshtKierowcy: TRzTabSheet
        Caption = 'Kierowcy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object rzGrpBox1: TRzGroupBox
          Left = 16
          Top = 24
          Width = 433
          Height = 353
          Caption = ' Wprowad'#378' '
          CaptionFont.Charset = DEFAULT_CHARSET
          CaptionFont.Color = clWindowText
          CaptionFont.Height = -13
          CaptionFont.Name = 'Tahoma'
          CaptionFont.Style = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          GroupStyle = gsUnderline
          ParentFont = False
          TabOrder = 0
          object rzlbl1: TRzLabel
            Left = 24
            Top = 40
            Width = 27
            Height = 16
            Caption = 'Imi'#281
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl2: TRzLabel
            Left = 24
            Top = 81
            Width = 71
            Height = 16
            Caption = 'Drugie imi'#281
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl3: TRzLabel
            Left = 24
            Top = 121
            Width = 59
            Height = 16
            Caption = 'Nazwisko'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl4: TRzLabel
            Left = 24
            Top = 161
            Width = 80
            Height = 16
            Caption = 'Prawo jazdy'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl5: TRzLabel
            Left = 24
            Top = 201
            Width = 121
            Height = 16
            Caption = 'Inne/pozwolenie 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl6: TRzLabel
            Left = 24
            Top = 241
            Width = 121
            Height = 16
            Caption = 'Inne/pozwolenie 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzEdtImie: TRzEdit
            Left = 192
            Top = 40
            Width = 201
            Height = 21
            Text = ''
            TabOrder = 0
          end
          object rzEdtDrugieImie: TRzEdit
            Left = 192
            Top = 80
            Width = 201
            Height = 21
            Text = ''
            TabOrder = 1
          end
          object rzEdtNazwisko: TRzEdit
            Left = 192
            Top = 120
            Width = 201
            Height = 21
            Text = ''
            TabOrder = 2
          end
          object rzCmbxPrawoJazdy: TRzComboBox
            Left = 192
            Top = 160
            Width = 201
            Height = 21
            TabOrder = 3
            Items.Strings = (
              'B'
              'C1'
              'C'
              'D1'
              'D'
              'DE'
              'T'
              'F'
              'WSZYSTKIE'
              '')
          end
          object rzEdtInne1: TRzEdit
            Left = 192
            Top = 200
            Width = 121
            Height = 21
            Text = ''
            TabOrder = 4
          end
          object rzEdtInne2: TRzEdit
            Left = 192
            Top = 240
            Width = 121
            Height = 21
            Text = ''
            TabOrder = 5
          end
        end
      end
      object RzTbshtPojazdy: TRzTabSheet
        Caption = 'Pojazdy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object rzGrpBox2: TRzGroupBox
          Left = 16
          Top = 24
          Width = 417
          Height = 375
          Caption = 'Wprowad'#378' pojazdy '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          GroupStyle = gsUnderline
          ParentFont = False
          TabOrder = 0
          object rzlbl12: TRzLabel
            Left = 24
            Top = 41
            Width = 40
            Height = 16
            Caption = 'Marka'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl13: TRzLabel
            Left = 24
            Top = 81
            Width = 23
            Height = 16
            Caption = 'Typ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl14: TRzLabel
            Left = 24
            Top = 122
            Width = 69
            Height = 14
            Caption = #321'adowno'#347#263
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl15: TRzLabel
            Left = 24
            Top = 159
            Width = 26
            Height = 16
            Caption = 'HDS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl16: TRzLabel
            Left = 24
            Top = 199
            Width = 40
            Height = 16
            Caption = 'Winda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl17: TRzLabel
            Left = 24
            Top = 239
            Width = 129
            Height = 16
            Caption = 'Przyczepa/naczepa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl18: TRzLabel
            Left = 24
            Top = 280
            Width = 106
            Height = 16
            Caption = 'Nr rejestracyjny'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl19: TRzLabel
            Left = 24
            Top = 328
            Width = 85
            Height = 16
            Caption = 'Inny nr ewid.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzEdtMarka: TRzEdit
            Left = 170
            Top = 40
            Width = 121
            Height = 21
            Text = ''
            TabOrder = 0
          end
          object rzEdtTyp: TRzEdit
            Left = 170
            Top = 80
            Width = 121
            Height = 21
            Text = ''
            TabOrder = 1
          end
          object rzEdtLadownosc: TRzEdit
            Left = 170
            Top = 120
            Width = 121
            Height = 21
            Text = ''
            TabOrder = 2
          end
          object rzEdtNrRej: TRzEdit
            Left = 170
            Top = 280
            Width = 121
            Height = 21
            Text = ''
            TabOrder = 3
          end
          object rzEdtInnyNr: TRzEdit
            Left = 170
            Top = 320
            Width = 121
            Height = 21
            Text = ''
            TabOrder = 4
          end
          object rzChckBxHDS: TRzCheckBox
            Left = 170
            Top = 160
            Width = 83
            Height = 15
            Caption = 'rzChckBxHDS'
            State = cbUnchecked
            TabOrder = 5
          end
          object rzChckBxWinda: TRzCheckBox
            Left = 170
            Top = 200
            Width = 93
            Height = 15
            Caption = 'rzChckBxWinda'
            State = cbUnchecked
            TabOrder = 6
          end
          object rzChckBxPrzyczepa: TRzCheckBox
            Left = 170
            Top = 240
            Width = 143
            Height = 15
            Caption = 'USTALI'#262' Z KRZY'#346'KIEM !!!'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            State = cbUnchecked
            TabOrder = 7
          end
        end
      end
      object RzTbshtMiejscowości: TRzTabSheet
        Caption = 'Miejscowo'#347'ci'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 2
        ExplicitWidth = 782
        ExplicitHeight = 335
        object rzGrpBox3: TRzGroupBox
          Left = 16
          Top = 24
          Width = 417
          Height = 313
          Caption = 'Zdefiniuj miejscowo'#347'ci'
          CaptionFont.Charset = DEFAULT_CHARSET
          CaptionFont.Color = clWindowText
          CaptionFont.Height = -11
          CaptionFont.Name = 'Tahoma'
          CaptionFont.Style = []
          GroupStyle = gsUnderline
          TabOrder = 0
          object rzlbl7: TRzLabel
            Left = 24
            Top = 40
            Width = 130
            Height = 16
            Caption = 'Nazwa miejscowo'#347'ci'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl8: TRzLabel
            Left = 24
            Top = 80
            Width = 91
            Height = 16
            Caption = 'Kod pocztowy'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl9: TRzLabel
            Left = 25
            Top = 121
            Width = 90
            Height = 16
            Caption = 'wojew'#243'dztwo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl10: TRzLabel
            Left = 24
            Top = 161
            Width = 44
            Height = 16
            Caption = 'Powiat'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl11: TRzLabel
            Left = 25
            Top = 201
            Width = 38
            Height = 16
            Caption = 'Gmina'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzEdtMiejscowosc: TRzEdit
            Left = 232
            Top = 40
            Width = 169
            Height = 21
            Text = ''
            TabOrder = 0
          end
          object rzEdtKod: TRzEdit
            Left = 232
            Top = 80
            Width = 169
            Height = 21
            Text = ''
            TabOrder = 1
          end
          object rzEdtWojew: TRzEdit
            Left = 232
            Top = 120
            Width = 169
            Height = 21
            Text = ''
            TabOrder = 2
          end
          object rzEdtPowiat: TRzEdit
            Left = 232
            Top = 160
            Width = 169
            Height = 21
            Text = ''
            TabOrder = 3
          end
          object rzEdtGmina: TRzEdit
            Left = 232
            Top = 200
            Width = 169
            Height = 21
            Text = ''
            TabOrder = 4
          end
        end
      end
    end
  end
end
