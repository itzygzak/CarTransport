object FrmUstalKurs: TFrmUstalKurs
  Left = 0
  Top = 0
  Caption = 'carTransport - Ustal kurs'
  ClientHeight = 761
  ClientWidth = 1129
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
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
  object spltVw1: TSplitView
    AlignWithMargins = True
    Left = 926
    Top = 44
    Width = 200
    Height = 714
    Color = clCream
    OpenedWidth = 200
    Placement = svpRight
    TabOrder = 1
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
              Caption = '[F9]  Zapisz'
              OnClick = ctgryBtns1Categories0Items0Click
            end
            item
              Caption = '[F10] Dukuj'
              OnClick = ctgryBtns1Categories0Items1Click
            end
            item
              Caption = 'Anuluj'
            end
            item
            end
            item
              Caption = '[F11] Podejrzyj grafik'
              OnClick = ctgryBtns1Categories0Items4Click
            end
            item
              Caption = '[F12] Zamknij'
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
  object RzPnl2: TRzPanel
    Left = 0
    Top = 41
    Width = 923
    Height = 720
    Align = alClient
    BorderOuter = fsNone
    BorderColor = 16737843
    BorderWidth = 2
    TabOrder = 2
    object rzGrpBoxDataWys: TRzGroupBox
      Left = 2
      Top = 2
      Width = 919
      Align = alTop
      Caption = 'Ustaw dat'#281' i godzin'#281
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -16
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      GradientColorStyle = gcsMSOffice
      GroupStyle = gsBanner
      TabOrder = 0
      object rzlbl1: TRzLabel
        Left = 16
        Top = 41
        Width = 60
        Height = 38
        Caption = 'Data'#13'wysy'#322'ki'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRaised
      end
      object rzlbl2: TRzLabel
        Left = 224
        Top = 41
        Width = 66
        Height = 38
        Caption = 'Godzina'#13'wysy'#322'ki'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRaised
      end
      object rzln2: TRzLine
        Left = 449
        Top = 24
        Width = 20
        Height = 75
        LineColor = clSkyBlue
        LineStyle = psInsideFrame
        LineWidth = 4
      end
      object rzlbl9: TRzLabel
        Left = 475
        Top = 41
        Width = 68
        Height = 38
        Caption = 'Data'#13'powrotu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRaised
      end
      object rzlbl10: TRzLabel
        Left = 688
        Top = 41
        Width = 68
        Height = 38
        Caption = 'Godzina'#13'powrotu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRaised
      end
      object rzDtmPckrDataWys: TRzDateTimePicker
        Left = 91
        Top = 49
        Width = 121
        Height = 24
        Date = 44378.000000000000000000
        Format = ''
        Time = 0.910925196760217700
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object tmPckrCzasWys: TTimePicker
        Left = 306
        Top = 49
        Width = 137
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 1
        Time = 44378.911143634260000000
        TimeFormat = 'hh:mm'
      end
      object rzDtmPckrDataPowrotu: TRzDateTimePicker
        Left = 560
        Top = 49
        Width = 122
        Height = 24
        Date = 44379.000000000000000000
        Format = ''
        Time = 0.690261932868452300
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = rzDtmPckrDataPowrotuChange
      end
      object tmPckrGodzPowrotu: TTimePicker
        Left = 771
        Top = 49
        Width = 137
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 3
        Time = 44379.691840578700000000
        TimeFormat = 'hh:mm'
      end
    end
    object rzGrpBoxWgDokum: TRzGroupBox
      Left = 2
      Top = 107
      Width = 919
      Height = 118
      Align = alTop
      Caption = 'Podaj dokument (nr, data, rodzaj)'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -16
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      GradientColorStyle = gcsMSOffice
      GroupStyle = gsBanner
      TabOrder = 1
      object rzlbl3: TRzLabel
        Left = 16
        Top = 48
        Width = 89
        Height = 38
        Caption = 'Dokument '#13'sprzeda'#380'y'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRaised
      end
      object rzlbl4: TRzLabel
        Left = 326
        Top = 56
        Width = 51
        Height = 19
        Caption = 'Uwagi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRaised
      end
      object rzMmoUwagi: TRzMemo
        Left = 391
        Top = 48
        Width = 506
        Height = 57
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object rzEdtWgDokumentu: TRzEdit
        Left = 111
        Top = 56
        Width = 192
        Height = 21
        Text = ''
        TabOrder = 0
        TextHint = 'To pole musi by'#263' wype'#322'nione'
      end
    end
    object rzGrpBoxPojazd: TRzGroupBox
      Left = 2
      Top = 225
      Width = 919
      Height = 176
      Align = alTop
      Caption = 'Wybierz pojazd'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -16
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      GradientColorStyle = gcsMSOffice
      GroupStyle = gsBanner
      TabOrder = 2
      object rzlbl5: TRzLabel
        Left = 16
        Top = 40
        Width = 55
        Height = 19
        Caption = 'Znajd'#378
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRaised
      end
      object rzlbl6: TRzLabel
        Left = 209
        Top = 40
        Width = 94
        Height = 19
        Caption = 'lub wybierz'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRaised
      end
      object dbtxtPojazd: TDBText
        Left = 24
        Top = 144
        Width = 65
        Height = 17
        DataField = 'ID_POJAZDY'
        DataSource = DataModule1.dsPojazdy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object rzlbl12: TRzLabel
        Left = 30
        Top = 144
        Width = 59
        Height = 13
        Caption = '- ID pojazdu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6723891
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object rzEdtSzukPojazd: TRzEdit
        Left = 16
        Top = 65
        Width = 185
        Height = 21
        Text = ''
        TabOrder = 0
        OnChange = rzEdtSzukPojazdChange
      end
      object SMDBgrdPojazd: TSMDBGrid
        Left = 309
        Top = 43
        Width = 588
        Height = 120
        DataSource = DataModule1.dsPojazdy
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        StyleElements = [seBorder]
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'Tahoma'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsNormal
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        GridStyle.Title.Direction = fdLeftToRight
        GridStyle.Title.StartColor = clCream
        GridStyle.Title.EndColor = clMoneyGreen
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_POJAZDY'
            Title.Caption = 'ID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 24
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MARKA'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TYP'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'LADOWNOSC'
            Title.Caption = #321'ADOWNO'#346#262
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 91
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CZY_HDS'
            Title.Caption = 'HDS ?'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CZY_WINDA'
            Title.Caption = 'WINDA ?'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 54
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CZY_PRZYCZEPA'
            Title.Caption = 'PRZYCZEPA ?'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NR_REJ_POJAZDU'
            Title.Caption = 'NR REJESTR'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'INNY_NR'
            Title.Caption = 'INNY NR'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PRZEGLAD_DO'
            Title.Caption = 'PRZEGL'#260'D DO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end>
      end
    end
    object rzGrpBoxKierow: TRzGroupBox
      Left = 2
      Top = 401
      Width = 919
      Height = 168
      Align = alTop
      Caption = 'Wybierz kierowc'#281' '
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -16
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      GradientColorStyle = gcsMSOffice
      GroupStyle = gsBanner
      TabOrder = 3
      object rzlbl7: TRzLabel
        Left = 16
        Top = 40
        Width = 55
        Height = 19
        Caption = 'Znajd'#378
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRaised
      end
      object rzlbl8: TRzLabel
        Left = 209
        Top = 40
        Width = 94
        Height = 19
        Caption = 'lub wybierz'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRaised
      end
      object dbtxtKierow: TDBText
        Left = 24
        Top = 144
        Width = 65
        Height = 17
        DataField = 'ID_KIEROWCA'
        DataSource = DataModule1.dsKier
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object rzlbl11: TRzLabel
        Left = 231
        Top = 104
        Width = 3
        Height = 13
      end
      object rzlbl13: TRzLabel
        Left = 29
        Top = 144
        Width = 60
        Height = 13
        Caption = '-ID kierowcy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6723891
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object rzEdtSzukKierow: TRzEdit
        Left = 16
        Top = 65
        Width = 185
        Height = 21
        Text = ''
        TabOrder = 0
        OnChange = rzEdtSzukKierowChange
      end
      object SMDBgrdKierowcy: TSMDBGrid
        Left = 309
        Top = 35
        Width = 588
        Height = 120
        DataSource = DataModule1.dsKier
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        StyleElements = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'Tahoma'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsNormal
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        GridStyle.Title.Direction = fdLeftToRight
        GridStyle.Title.StartColor = clCream
        GridStyle.Title.EndColor = clMoneyGreen
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_KIEROWCA'
            Title.Caption = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAZWISKO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NR_TELEFONU'
            Title.Caption = 'NR TELEFONU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRAWO_JAZDY'
            Title.Caption = 'PRAWO JAZDY'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CZY_TERMIN'
            Title.Caption = 'TERMIN'
            Visible = True
          end>
      end
      object smDbTnID_KIEROWCA: TSMDBButton
        Left = 16
        Top = 104
        Width = 153
        Height = 34
        Caption = 'smDbTnID_KIEROWCA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        WordWrap = True
        StyleElements = []
        OnClick = smDbTnID_KIEROWCAClick
        DataField = 'ID_KIEROWCA'
        DataSource = DataModule1.dsKier
      end
    end
    object rzGrpBoxMiejsc: TRzGroupBox
      Left = 2
      Top = 569
      Width = 919
      Height = 144
      Align = alTop
      Caption = 'Wybierz miejscowo'#347#263
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -16
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      GradientColorStyle = gcsMSOffice
      GroupStyle = gsBanner
      TabOrder = 4
      object rzlbl14: TRzLabel
        Left = 16
        Top = 40
        Width = 55
        Height = 19
        Caption = 'Znajd'#378
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRecessed
      end
      object rzlbl15: TRzLabel
        Left = 209
        Top = 40
        Width = 94
        Height = 19
        Caption = 'lub wybierz'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        LightTextStyle = True
        TextStyle = tsRaised
      end
      object dbtxtMiejsc: TDBText
        Left = 24
        Top = 120
        Width = 65
        Height = 17
        DataField = 'ID_MIEJSCOWOSCI'
        DataSource = DataModule1.dsMsc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object rzlbl16: TRzLabel
        Left = 30
        Top = 120
        Width = 77
        Height = 13
        Caption = '-ID miejscowo'#347#263
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6723891
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SMDBgrdMiejsc: TSMDBGrid
        Left = 309
        Top = 32
        Width = 588
        Height = 104
        DataSource = DataModule1.dsMsc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        StyleElements = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'Tahoma'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsNormal
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        GridStyle.Title.Direction = fdLeftToRight
        GridStyle.Title.StartColor = clMoneyGreen
        GridStyle.Title.EndColor = clCream
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoAutoWidth, eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_MIEJSCOWOSCI'
            Title.Caption = 'ID'
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAZWA'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KOD_POCZTOWY'
            Title.Caption = 'KOD POCZT.'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'WOJEWODZTWO'
            Width = 176
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'POWIAT'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GMINA'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KRAJ'
            Width = 50
            Visible = True
          end>
      end
      object rzEdtSzukMiejsc: TRzEdit
        Left = 16
        Top = 65
        Width = 185
        Height = 21
        Text = ''
        TabOrder = 1
        OnChange = rzEdtSzukMiejscChange
      end
    end
  end
end
