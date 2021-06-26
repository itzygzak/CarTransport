object FrmUstalKurs: TFrmUstalKurs
  Left = 0
  Top = 0
  Caption = 'Ustal kurs'
  ClientHeight = 637
  ClientWidth = 1129
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
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
    Height = 596
    Align = alClient
    BorderOuter = fsFlat
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 1
    ExplicitHeight = 505
    object rzGrpBox1: TRzGroupBox
      Left = 16
      Top = 6
      Width = 857
      Height = 80
      Caption = 'Ustal dat'#281' i godzin'#281
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -16
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      GroupStyle = gsUnderline
      TabOrder = 0
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
      object tmPckrCzasWysylki: TTimePicker
        Left = 600
        Top = 40
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 1
        Time = 44373.860554699070000000
        TimeFormat = 'hh:mm'
      end
    end
    object rzGrpBox2: TRzGroupBox
      Left = 16
      Top = 96
      Width = 857
      Height = 161
      Caption = 'Wg dokumentu (wybierz)'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -16
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      GroupStyle = gsUnderline
      TabOrder = 1
      object rzlbl4: TRzLabel
        Left = 9
        Top = 41
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
      object rzlbl3: TRzLabel
        Left = 424
        Top = 40
        Width = 38
        Height = 16
        Caption = 'Uwagi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16737843
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRecessed
      end
      object rzEdtWgDokum: TRzEdit
        Left = 136
        Top = 40
        Width = 265
        Height = 21
        Text = ''
        TabOrder = 0
      end
      object rzMmoUwagi: TRzMemo
        Left = 488
        Top = 40
        Width = 353
        Height = 97
        TabOrder = 1
      end
    end
    object rzGrpBox3: TRzGroupBox
      Left = 16
      Top = 239
      Width = 857
      Height = 90
      Caption = 'Kierowca i pojazd (wybierz)'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -16
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      GroupStyle = gsUnderline
      TabOrder = 2
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
        OnClick = rzCmbxKierowcaClick
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
        OnClick = rzCmbxPojazdClick
        Items.Strings = (
          'Robur'
          'Dekawka'
          'Maluch'
          'Seicento')
      end
    end
    object rzGrpBox5: TRzGroupBox
      Left = 16
      Top = 352
      Width = 857
      Height = 89
      Caption = 'Przewidywana data i godzina powrotu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      GroupStyle = gsUnderline
      ParentFont = False
      TabOrder = 3
      object rzlbl7: TRzLabel
        Left = 9
        Top = 48
        Width = 131
        Height = 23
        Caption = 'Data powrotu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
      end
      object rzlbl13: TRzLabel
        Left = 398
        Top = 48
        Width = 164
        Height = 23
        Caption = 'Godzina powrotu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRecessed
      end
      object rzDtmPckrDataPowrotu: TRzDateTimePicker
        Left = 160
        Top = 48
        Width = 186
        Height = 27
        Date = 44373.000000000000000000
        Format = ''
        Time = 0.938321064815681900
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object tmPckrCzasPowrotu: TTimePicker
      Left = 601
      Top = 397
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 4
      Time = 44373.859012604170000000
      TimeFormat = 'hh:mm'
    end
    object RzPnlAdres: TRzPanel
      Left = 3
      Top = 456
      Width = 917
      Height = 137
      Align = alBottom
      TabOrder = 5
      object rzGrpBox4: TRzGroupBox
        Left = 13
        Top = 16
        Width = 848
        Height = 113
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
        TabOrder = 0
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
          Left = 585
          Top = 41
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
          Left = 1
          Top = 81
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
          Left = 272
          Top = 81
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
          OnClick = rzCmbxMiejscClick
          Items.Strings = (
            'Pi'#261'tkowisko'
            #321#243'd'#378
            #321#243'd'#378' Ruda')
        end
        object rzCmbxKod: TRzComboBox
          Left = 400
          Top = 40
          Width = 145
          Height = 21
          TabOrder = 1
        end
        object rzCmbxUlica: TRzComboBox
          Left = 620
          Top = 40
          Width = 145
          Height = 21
          TabOrder = 2
        end
        object rzCmbxGmina: TRzComboBox
          Left = 64
          Top = 80
          Width = 145
          Height = 21
          TabOrder = 3
        end
        object rzCmbxPowiat: TRzComboBox
          Left = 336
          Top = 80
          Width = 145
          Height = 21
          TabOrder = 4
        end
      end
    end
  end
  object spltVw1: TSplitView
    AlignWithMargins = True
    Left = 926
    Top = 44
    Width = 200
    Height = 590
    Color = clCream
    OpenedWidth = 200
    Placement = svpRight
    TabOrder = 2
    ExplicitHeight = 499
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
    object rzBtnUstal: TRzButton
      Left = 3
      Top = 498
      Width = 187
      Height = 57
      Caption = 'Ustal'
      TabOrder = 1
      OnClick = rzBtnUstalClick
    end
  end
  object tmr1: TTimer
    Interval = 500
    OnTimer = tmr1Timer
    Left = 1072
    Top = 305
  end
end
