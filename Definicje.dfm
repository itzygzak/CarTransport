object FrmDefinicje: TFrmDefinicje
  Left = 0
  Top = 0
  Caption = 'Zdefiniuj'
  ClientHeight = 563
  ClientWidth = 903
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  OnShow = FormShow
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
    object img2: TImage
      Left = 863
      Top = 0
      Width = 40
      Height = 41
      Align = alRight
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
        002808060000008CFEB86D000000634944415478DAEDD3310A00300843D17AFF
        43B76E8E150A31D09F295B9E83B1CC13D3008052E0CE5C0ED84B90C80004E80A
        54EC7780D501FE06B47F128000A7818AFD0EB03A40806640FB2F0608701AA8D8
        EF00AB03FC0D68FF2400018E021D03F0350736D88B2980FFC434000000004945
        4E44AE426082}
      OnClick = img2Click
      ExplicitLeft = 853
      ExplicitTop = -9
      ExplicitHeight = 40
    end
  end
  object RzPnl2: TRzPanel
    Left = 0
    Top = 41
    Width = 703
    Height = 522
    Align = alClient
    BorderOuter = fsNone
    BorderColor = clMenuHighlight
    BorderWidth = 2
    TabOrder = 1
    object RzPgCntrl1: TRzPageControl
      Left = 2
      Top = 2
      Width = 699
      Height = 518
      Hint = ''
      ActivePage = RzTbshtMiejscowości
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabIndex = 2
      TabOrder = 0
      TabStyle = tsDoubleSlant
      FixedDimension = 25
      object RzTbshtKierowcy: TRzTabSheet
        OnShow = RzTbshtKierowcyShow
        Caption = 'Kierowcy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        object rzGrpBox1: TRzGroupBox
          Left = 16
          Top = 16
          Width = 481
          Height = 454
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
            Top = 201
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
            Top = 281
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
            Top = 321
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
          object img1: TImage
            Left = 416
            Top = 200
            Width = 50
            Height = 50
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
              003208060000001E3F88B100000006624B474400FF00FF00FFA0BDA79300000D
              864944415478DADD9A097014E795C7FFDD3DF7A59166740DBAD12D90006171AC
              CD51D86B9CD8899D4D1CDB55B1003B760590CB1647E2D46657D9DAB29D98A38C
              C089B336825D93B848ED3A38BB5086D8F840012C40E8BE85EE7324CD8CA4D19C
              DDFBBA078170046146DA656B5FD568A67BFAFBFAFBF5FBBEF7FEEF1B31B88726
              4060F6171DB95F10F010C3302BC02087DE8DE2170260130461903E54338C705E
              E0FDA7771E7ABEF3767D31F702E09D17DE918FCBE5852CCBEEA2C1A68BE7D411
              617EBD49C769742A70720EAE49379C0E271CFDA382DFE76768A43C23E00F60D8
              5F1497167E75CF41F66D2F5B0C86F98000B255463D6F5995CD86A558A0D46B60
              54713028D85BAE17FC3C467B47D07AA905DD57DB05DEEB2787F1FB5885EE67C5
              FB9F9CBA27207BB71D7E9461D9E38C9C5326AE5BCA462D49A5077C73E02C8DC6
              AC9141C5CD3E2CD7F8142A4E5C407FBD38C39872153FB971DBDBDB26FEC740F6
              FFE8700A6448E10556C3F082876158BBC0F0C9F4D5118551C7657E771DAB3687
              DDB6BDC8A1E05828E98346CE40C6DE3ACC960B8DA8FCE8223916E55AB77BFD8B
              BF79D13B6F207B8A0E673302FB2396C393BC5F889AED1A855E23E46EF9062353
              2B83EA5B2D6360507212D8B4B55E6CC29513E7C58F253B0E6EFEF99C40DE7CE9
              DD45ACC03D478B700939772D188131195918F51CB46A06E2AC11C34F57BF0FA3
              761E99DF5F0F63B225E4FBE969FD88EB687AD0E78E7D8ABEFA6E3FFC7C72C820
              7BB797FD138592BF1743A89CDC1F19CE22315606A5E2D62E7922F9739507AA48
              13163DFBF05C9E9B64A257A2681DD1B4827D700C1FBF7542F24A48207BB61F79
              8181F08E298C455A921C2AC5EDBB714C08B8D2E046F2DFDE87E865E97306114D
              276711A1E6A4CFA70F7E8489614775D020259BCA547A1DFAB46A363C3F5B0196
              BDF3F5FD563F9AAE7991F5D4068425C5CC0B88681A82D1D2EBD2F1CF3158DF39
              1234C89EED471FA1DC743233598E1833F757AF9F0659BC6923B431A6790399B6
              B6931760AD6977860052F6136AF4FA8A5C25D4CA4073975B404DAB1714AD6089
              E66031CBC05D671CB1F951D3E245DA130FC0949130EF2075EF9FC678AFB53668
              90BD45656F506AFDF19A7C55202AD1B9AB8D1E385D80D1A4C6F0C0242805202A
              828399028056C3E242B51BE6452948FDE6AA7985F0D14DAF947E28F03CFF9BE0
              41B61D7E8B42C64BEB96ABA474DA37E44373A70F6B1F4D436E8105DDED63A8AD
              E8437BE388E4A1E958C9322CF25EF8169446EDBC81F4FEB906DD5F548307D607
              0FB2FDC86BE48757D7E42BC1C9588C0B5A4C7A386CF84E06F1DDECCEE5F4A2E7
              9A0DD6FE49580726D0D1320ADD8248643FBDE1165912AA39AD36D4969D226708
              6777946E7A30048F94BD4C4F79FFB79F4C414C4A24145AD55DB5ABF9AA0F9FFD
              B105A6AC44A43EB67A4E30535607EA3F38C3FB9CEE091F84E5BB0F6C6E091A84
              D4EB3334618E3DBD351FE6585D506D2F9CB9868A2FBAA08B356121AD973BE9AD
              3B59F5BBFF294C59ED3E92446B5F395428E994A040F615953D40F2FB2D6AB6F4
              99A2E53045053FDF1B2A0770F6A316F034B12317A720F6BECCA0817ACED5D0AB
              5A2045B4B8F8D0A6BAA040C4626842A168A565102B93CB98E77EB2522697FFF5
              3C329B8D0C4EE23C79E75AF38814F6B45146189262A10CD349C1404F1E93696E
              3F65DDF64954FEEA0FA4E3841FEE3CB4E5DDA040F66E3B9A0E866F92A2D38AD0
              85DF4CB3F64FA0B16A107D9D760CF74D929778E9BC26D2282C26953C3378CCB4
              C98151D41C39452A4F786667E996DF0505B26FDB911C6A58BBFE5B695874DFFC
              80CCB4EBEB8748843D34ACDD89EB97227645F65F5CE7F77851FFFE697E72D83E
              C5C87C09C5FB9F1F0D0AE440D101A557D08F672F8BE1363C9131F7F8F9353BF1
              AFD5DEAED6B1AE715367A6CE9A748A44E983C6D40588CE4B832A422F018CF70C
              A3FF6283DF3339459A5AF8FECED2CDFF31DD3EA8C54ED2FD43999CFD6661F14A
              B946279F3708718A7DF0AB2B624ED8BBF3D0E6DD25252532C370D24FC1A148E0
              05F3CC6B69B655F17E7EFBCEB79F3B77CBF9A0408ADECB83C05ED4EA94AEF54F
              A48725A747CC1982D688F0D9472D535E0FEFE6386FD6CB6FFD7070FA3B11483B
              989CCD707C0AD53E1C2D8A9A1D870A9B67EB27F83CB2B56C23CFE27D9D5EA1D9
              B26B957A2E55BFCFC7E35F5E2BF7FABC7C1B65C867769416568AE7F7BF5C9624
              F88457053062E557EFF771AFEDFAF5B34377EA2BC4C2EAF02BF484F67DE7B925
              5890145A5213ADA97A08A77FDF20EEC76DDC7970CBC79217C47A47CF34331CBB
              80A217EF1C1A63A9CCBC5A5CBA297FDE417EB1FB3DBDCCC976C7A718558F6FCE
              0B6E2761DA287FFC5B6985DB669D6A21ADB478FAF4BEEDEF2D17C0562C7C6425
              22F316A2A79C92DF97D5607C6C5CF1AF0B7BE7154434128FBFA5D13CF577CF2F
              612C89C17BA5B56618A78ED78B9B136F8A0B7CFA7C49C9718561C4D9CAC8448F
              84B39433C40DD4CA79F7084DAB8729B3FF83DFEB5F2D1E1B23B5EEA7B72E53CA
              64771F9145657CACF492D739E191421FCBB1E57E1FFF73023A231E8BFB627E19
              5E2709924B9EBB40D5C0ABBBDFDE3C306790E3DF3BCE75474F7C973EFE58D459
              4AAD4A4829C860141A25AA4E7E85AC653178F0F18CBB8220598113476BD0DBE1
              40FE13AB31D66745C7E556DEE7F6B2349A0A86675F77445E3B41118B0FE601DF
              11444C821EC1504817EDA221A4CA940A7B5C7EAA2AA3205DC95EAF659BBEA841
              7B453396AF4DC4AA0D4977EC512CB43E3DD12C09C79C8796212137593AEFA564
              D770AE7EB2BFF61A78AF5F54A2F5C4FBC64464E7EF08C81732C881A2F70D3E78
              5FA4CE5EA1C358B95A698BCF4FD3452CB4C858964344B806D33288EA4CD49EA9
              444F6D07D273A3B0E61BA9506BFF32598EDB5CF8D387CD546C8D21755516D256
              DD941F7E3F8F31FB14789F1F438D5DEEBEAA36AFDFE3136B846BE4C237C72799
              B292239B5D770D226DF72B94145A8557E9D0A8D06B6CF1CBD20CE1C931EC4C01
              A750C860D02A6F69DD76B1112DE5F5D24F02B905B110038056AF200037BADAC6
              D070A59FAE67254F2CC8BEB909216EE039C65D524EB931FD086CB8A5D7DB5BD9
              ECF2B9BC7A3AD54FF7FA292DF8A314F6853B82FC726B590CC7E0DFE9CC6AA541
              ED48B82F4B6F8C8F626E37555896814A29835A25BF51E2DAFA4709A60ED6AEA1
              C0AEC4F44DA81A8C4EB520FDFE1C68C303C518C9114CB93C70B97DD2B6EA6C26
              7A7BB4BDCFDF5DD13CE57579A8A1F021AF92FD60D79E6727670579E38577C2E4
              0A4539C3321971F9E94C4C4E1207E6EE021A23EE94BB3D70740FC3141F0903D5
              165EF178D026BD536090CE896BCAD63F8231820D4F8E054F70B703F8BA91B642
              EFE566D7405DA7929A7C3261EE78E4EB6B471A2D89C163F4F674EABA250C4DA3
              BBEB7D86359DFA0A8E01494D4349912C322516A604AAE7A938728D3B61ED1C82
              B57D405AD4A299D3E2907CFFA2A0EFD35FDD2EF45C6E660481F9E79D8736FDEC
              1690FDDB0E2FE319E65254568290B8323B24795E77A21C6A9B0399721E3D7E06
              7D7E16DE194F5BFC112A9EE5B140C6A3C223832A2E0AA91B9685722B349DB9EC
              73F40CFB38CE97345360327B8BCA0E52E2D99AFBBD358C42A70EA97311C460B7
              63A33AE06D9FF85302C18C91BA8CBC0E305D14FFDEA980620E20A2E7C51940E9
              BE98F4D9FE9B20DB0FD76BCD6119D98FAD0EB958FADFF4886895BFFDC4EF73FB
              4EED38B8E9B119206553A6851655CA9ADC903B6E3C7911E383638141AB14088B
              8F823E360272B502EE49171C7D23A0E9009F27E0B150D7C8B435FCD745616278
              AC6147E9E69C99204274761212566486DCB1CBEE84BD6F18FAA87068220C5208
              1173810867883505420A85A889613BBD6C30A55824C850ADE5D34AD83A87BAC9
              233712520024271109055921773C9BD93A07A51BE67CFB6F084E3FAF7DB77E72
              05635DC3B707A1D006559816662AFA45EB28AF0525451813A224B1D7FE5915A2
              B313A18B0E97627BDBD9AB88CB4F833A5C0F1F25B7F62F6B90B43A47DA461D6D
              EF47DBE755C87A74257491464C8E3840D2030BD72D9192A938DDAC2D3D485993
              27796CB46300E30363485C1978A0C38DDDF04EB961599A2A1DF755B54BAA41BC
              FF1D41E20B32517DFC731A940E496B03754ECD079F233C2506710519F07B7DA8
              3DFE25621627233A37096E87138D7FBC287D674AB360821260DB9F2AA5B66171
              66D83A86D049593EEDE17C68CC061A580FFA2EB720EBF1551268FFD5360CD575
              61F1536B45198FEEF30DB0775BB1E8C907A47BB79FAD8267C285CCC75648C74D
              272B2057CA91F948018154CE0E129995007D5A147ACED6416E50C3BC2451FAB2
              FB4C0D747126846759482E08E8FAB80AE119161852A2240FF47E5207F3D22468
              2DE1F0D03AE93FD784E815A95099F5981AB463E8523B2C6BB220D7AB30D165C5
              484D0FE21F5A0496B49ABD7500F69601C46FCC9324CE685D37A6061C58B021B0
              7E87AF5C83CFE941ECFD81F260E07C0B58F2C88295E9B05676C2361B48D8C268
              18332DF03ADD9294E0484389E6A527C291966265812CE0714C414E6291E10291
              5A1CBC082E692D41DCCA744219A6092C769A8A1E52B44AA346BA565CFCDE4937
              148640AEE2FD7E69A00AFDF563F2384F514D767D77DF2F6A306A23D30482826F
              CA23ED05C9683C23573A30D16FBB1564DF4B47EC8A308DC19C9780BBD557F7D2
              C4B569BD44DE72792B8B0F14DE4846CCDE978EFE2349D1927B3DC0204DA0BAE2
              07AF946E3A760344FCB3AFE86881003E8FC4D8FF7997D0A416FF3DE8C2F4CF09
              B780FC7FB0FF06FC5DCC48FB6ADFE50000000049454E44AE426082}
            OnClick = img1Click
          end
          object rzlbl20: TRzLabel
            Left = 24
            Top = 361
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
          object rzlbl21: TRzLabel
            Left = 24
            Top = 161
            Width = 72
            Height = 16
            Caption = 'Nr telefonu'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl22: TRzLabel
            Left = 24
            Top = 241
            Width = 127
            Height = 16
            Caption = 'Termin prawa jazdy'
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
            Hint = 'Pole nie mo'#380'e by'#263' puste'
            Text = ''
            ParentShowHint = False
            ShowHint = True
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
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object rzCmbxPrawoJazdy: TRzComboBox
            Left = 192
            Top = 200
            Width = 201
            Height = 21
            Hint = 'Pole nie mo'#380'e by'#263' puste'
            Style = csDropDownList
            ParentShowHint = False
            ShowHint = True
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
            Top = 280
            Width = 201
            Height = 21
            Text = ''
            TabOrder = 4
          end
          object rzEdtInne2: TRzEdit
            Left = 192
            Top = 320
            Width = 201
            Height = 21
            Text = ''
            TabOrder = 5
          end
          object rzMmo1: TRzMemo
            Left = 192
            Top = 361
            Width = 289
            Height = 65
            TabOrder = 6
          end
          object rzEdtNrTelefonu: TRzEdit
            Left = 192
            Top = 160
            Width = 201
            Height = 21
            Text = ''
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
          end
          object rzCmbxTermin: TRzComboBox
            Left = 192
            Top = 240
            Width = 201
            Height = 21
            Style = csDropDownList
            TabOrder = 8
            Items.Strings = (
              'Bezterminowe'
              'Terminowe')
          end
        end
      end
      object RzTbshtPojazdy: TRzTabSheet
        OnShow = RzTbshtPojazdyShow
        Caption = 'Pojazdy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        object rzGrpBox2: TRzGroupBox
          Left = 16
          Top = 24
          Width = 417
          Height = 417
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
            Top = 121
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
            Top = 161
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
            Top = 201
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
            Top = 241
            Width = 67
            Height = 16
            Caption = 'Przyczepa'
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
            Top = 281
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
            Top = 321
            Width = 47
            Height = 16
            Caption = 'Inny nr'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRecessed
          end
          object rzlbl23: TRzLabel
            Left = 24
            Top = 361
            Width = 76
            Height = 16
            Caption = 'Przegl'#261'd do'
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
            Left = 168
            Top = 119
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
            Top = 162
            Width = 19
            Height = 15
            State = cbUnchecked
            TabOrder = 5
          end
          object rzChckBxWinda: TRzCheckBox
            Left = 168
            Top = 201
            Width = 19
            Height = 15
            State = cbUnchecked
            TabOrder = 6
          end
          object rzEdtPrzeglad: TRzEdit
            Left = 170
            Top = 360
            Width = 121
            Height = 21
            Text = ''
            TabOrder = 7
          end
          object rzChckBxPrzyczepa: TRzCheckBox
            Left = 168
            Top = 242
            Width = 19
            Height = 15
            State = cbUnchecked
            TabOrder = 8
          end
        end
      end
      object RzTbshtMiejscowości: TRzTabSheet
        OnShow = RzTbshtMiejscowościShow
        Caption = 'Miejscowo'#347'ci'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        object rzGrpBox3: TRzGroupBox
          Left = 16
          Top = 24
          Width = 417
          Height = 313
          Caption = 'Zdefiniuj miejscowo'#347'ci'
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
          object rzlbl24: TRzLabel
            Left = 25
            Top = 240
            Width = 26
            Height = 16
            Caption = 'Kraj'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16737843
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            LightTextStyle = True
            TextStyle = tsRaised
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
          object rzCmbxKraj: TRzComboBox
            Left = 232
            Top = 240
            Width = 169
            Height = 21
            Style = csDropDownList
            TabOrder = 5
            Items.Strings = (
              'Polska'
              'Chiny'
              'Indie'
              'Uganda')
          end
        end
      end
    end
  end
  object spltVw1: TSplitView
    Left = 703
    Top = 41
    Width = 200
    Height = 522
    Color = clCream
    OpenedWidth = 200
    Placement = svpRight
    TabOrder = 2
    object ctgryBtns1: TCategoryButtons
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 194
      Height = 161
      Align = alTop
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonOptions = [boFullSize, boGradientFill, boShowCaptions, boVerticalCategoryCaptions]
      Categories = <
        item
          Caption = 'Wybierz z menu'
          Color = clMoneyGreen
          Collapsed = False
          Items = <
            item
              Caption = 'Zapisz'
              OnClick = ctgryBtns1Categories0Items0Click
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
      SelectedButtonColor = clRed
      TabOrder = 0
      ExplicitLeft = 4
      ExplicitTop = 6
    end
  end
end
