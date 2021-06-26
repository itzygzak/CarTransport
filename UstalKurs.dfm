object FrmUstalKurs: TFrmUstalKurs
  Left = 0
  Top = 0
  Caption = 'Ustal kurs'
  ClientHeight = 546
  ClientWidth = 1129
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPnl1: TRzPanel
    Left = 0
    Top = 0
    Width = 1129
    Height = 41
    Align = alTop
    BorderInner = fsFlat
    BorderOuter = fsFlat
    Color = clHighlight
    TabOrder = 0
    object img1: TImage
      Left = 1087
      Top = 2
      Width = 40
      Height = 37
      Align = alRight
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
        002808060000008CFEB86D000000634944415478DAEDD3310A00300843D17AFF
        43B76E8E150A31D09F295B9E83B1CC13D3008052E0CE5C0ED84B90C80004E80A
        54EC7780D501FE06B47F128000A7818AFD0EB03A40806640FB2F0608701AA8D8
        EF00AB03FC0D68FF2400018E021D03F0350736D88B2980FFC434000000004945
        4E44AE426082}
      OnClick = img1Click
      ExplicitLeft = 1095
      ExplicitHeight = 40
    end
  end
  object RzPnl2: TRzPanel
    Left = 0
    Top = 41
    Width = 923
    Height = 505
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 1
    object rzBtnUstal: TRzButton
      Left = 720
      Top = 432
      Width = 187
      Height = 57
      Caption = 'Ustal'
      TabOrder = 0
      OnClick = rzBtnUstalClick
    end
    object rzGrpBox1: TRzGroupBox
      Left = 24
      Top = 18
      Width = 857
      Height = 80
      Caption = 'Ustal dat'#281' i godzin'#281
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -16
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      GroupStyle = gsUnderline
      TabOrder = 1
      object rzlbl1: TRzLabel
        Left = 9
        Top = 40
        Width = 137
        Height = 25
        Caption = 'Data wysy'#322'ki'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRecessed
      end
      object rzlbl2: TRzLabel
        Left = 398
        Top = 40
        Width = 171
        Height = 25
        Caption = 'Godzina wysy'#322'ki'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRecessed
      end
      object rzDtmPckrData: TRzDateTimePicker
        Left = 167
        Top = 40
        Width = 186
        Height = 27
        Date = 44360.000000000000000000
        Format = ''
        Time = 0.857375138890347400
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object rzEdtTime: TRzMaskEdit
      Left = 616
      Top = 60
      Width = 116
      Height = 27
      EditMask = '!90:00:00>;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 2
      Text = '  :  :  '
    end
    object rzGrpBox2: TRzGroupBox
      Left = 24
      Top = 120
      Width = 625
      Caption = 'Wg dokumentu (wybierz)'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -16
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      GroupStyle = gsUnderline
      TabOrder = 3
      object rzlbl4: TRzLabel
        Left = 9
        Top = 57
        Width = 97
        Height = 16
        Caption = 'Wg dokumentu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16737843
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
      end
      object rzCmbxWgDokum: TRzComboBox
        Left = 144
        Top = 56
        Width = 428
        Height = 21
        TabOrder = 0
        Items.Strings = (
          'FV00610/2021  z 03.06.2021'
          'FV00625/2021  z 03.06.2021'
          'FV00626/2021  z 03.06.2021'
          'FV00645/2021  z 04.06.2021'
          'FV00645/2021  z 05.06.2021'
          'FV00657/2021  z 05.06.2021'
          'FV00675/2021  z 05.06.2021'
          'PG001278/2021 z 07.06.2021'
          'PG001271/2021 z 09.06.2021'
          'PG001211/2021 z 10.06.2021'
          'PG001280/2021 z 10.06.2021'
          'PG001281/2021 z 09.06.2021')
      end
    end
    object rzGrpBox3: TRzGroupBox
      Left = 24
      Top = 231
      Width = 625
      Height = 90
      Caption = 'Kierowca i pojazd (wybierz)'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -16
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      GroupStyle = gsUnderline
      TabOrder = 4
      object rzlbl5: TRzLabel
        Left = 9
        Top = 49
        Width = 59
        Height = 16
        Caption = 'Kierowca'
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
        Left = 310
        Top = 49
        Width = 43
        Height = 16
        Caption = 'Pojazd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16737843
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRecessed
      end
      object rzCmbxKierowca: TRzComboBox
        Left = 96
        Top = 48
        Width = 145
        Height = 21
        TabOrder = 0
        Items.Strings = (
          'Jan Kowalski'
          'Zdzis'#322'aw Nowak'
          'Onufry Zag'#322'oba')
      end
      object rzCmbxPojazd: TRzComboBox
        Left = 424
        Top = 48
        Width = 145
        Height = 21
        TabOrder = 1
        Items.Strings = (
          'Robur'
          'Dekawka'
          'Maluch'
          'Seicento')
      end
    end
    object rzGrpBox4: TRzGroupBox
      Left = 32
      Top = 320
      Width = 617
      Height = 169
      Caption = 'Adres (wybierz)'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -16
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      GroupStyle = gsUnderline
      ParentFont = False
      TabOrder = 5
      object rzlbl8: TRzLabel
        Left = 1
        Top = 41
        Width = 81
        Height = 16
        Caption = 'Miejscowo'#347#263
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
        Left = 294
        Top = 39
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
      object rzlbl10: TRzLabel
        Left = 1
        Top = 81
        Width = 29
        Height = 16
        Caption = 'Ulica'
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
        Left = 9
        Top = 121
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
      object rzlbl12: TRzLabel
        Left = 328
        Top = 121
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
      object rzCmbxMiejsc: TRzComboBox
        Left = 96
        Top = 40
        Width = 145
        Height = 21
        TabOrder = 0
        Items.Strings = (
          'Pi'#261'tkowisko'
          #321#243'd'#378
          #321#243'd'#378' Ruda')
      end
      object rzCmbxKod: TRzComboBox
        Left = 416
        Top = 40
        Width = 145
        Height = 21
        TabOrder = 1
      end
      object rzCmbxUlica: TRzComboBox
        Left = 96
        Top = 80
        Width = 145
        Height = 21
        TabOrder = 2
      end
      object rzCmbxGmina: TRzComboBox
        Left = 80
        Top = 120
        Width = 145
        Height = 21
        TabOrder = 3
      end
      object rzCmbxPowiat: TRzComboBox
        Left = 416
        Top = 120
        Width = 145
        Height = 21
        TabOrder = 4
      end
    end
  end
  object spltVw1: TSplitView
    AlignWithMargins = True
    Left = 926
    Top = 44
    Width = 200
    Height = 499
    Color = clCream
    OpenedWidth = 200
    Placement = svpRight
    TabOrder = 2
    object ctgryBtns1: TCategoryButtons
      Left = 0
      Top = 0
      Width = 200
      Height = 161
      Align = alTop
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonOptions = [boFullSize, boGradientFill, boShowCaptions, boVerticalCategoryCaptions]
      Categories = <
        item
          Caption = 'Menu Zapisz'
          Color = clMoneyGreen
          Collapsed = False
          Items = <
            item
              Caption = 'Zapisz'
            end
            item
              Caption = 'Dukuj'
            end
            item
              Caption = 'Anuluj'
            end
            item
            end
            item
              Caption = 'Zamknij'
              OnClick = ctgryBtns1Categories0Items3Click
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
  object tmr1: TTimer
    Interval = 500
    OnTimer = tmr1Timer
    Left = 1072
    Top = 305
  end
end
