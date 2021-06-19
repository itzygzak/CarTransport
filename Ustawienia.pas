unit Ustawienia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.ExtCtrls, RzPanel,
  Vcl.Imaging.pngimage, RzTabs, Vcl.CategoryButtons, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzLabel, RzCmboBx;

type
  TFrmUstawienia = class(TForm)
    rzpnl1: TRzPanel;
    spltVw1: TSplitView;
    rzpnl2: TRzPanel;
    img1: TImage;
    rzPgCntrl1: TRzPageControl;
    rztbshtTabSheet1: TRzTabSheet;
    rztbshtTabSheet2: TRzTabSheet;
    rztbshtTabSheet3: TRzTabSheet;
    ctgryBtns1: TCategoryButtons;
    rzGrpBx1: TRzGroupBox;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzlbl3: TRzLabel;
    rzlbl4: TRzLabel;
    rzlbl5: TRzLabel;
    rzlbl6: TRzLabel;
    rzlbl7: TRzLabel;
    rzEdtLogin: TRzEdit;
    rzEdtHaslo: TRzEdit;
    rzEdtImie: TRzEdit;
    rzEdtDrugieImie: TRzEdit;
    rzEdtNazwisko: TRzEdit;
    rzEdtTelefon: TRzEdit;
    rzCmBx1: TRzComboBox;
    procedure FormCreate(Sender: TObject);
    procedure ctgryBtns1Categories0Items0Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUstawienia: TFrmUstawienia;

implementation
uses DM;


{$R *.dfm}

procedure TFrmUstawienia.ctgryBtns1Categories0Items0Click(Sender: TObject);
 var
  generator: Integer;  //potrzebna do ustawienia siê na nowym rekordzie
  historia: string;   //potrzebna do zapisu historia

begin
  try
    with DataModule1.ibQryTemp, SQL do          //dodanie nowego instruktora
    begin
      Close;
      Clear;
      Add('INSERT INTO uzyt (login, haslo, Imie, Drugie_imie, Nazwisko, Nr_Telefonu, Stanowisko)');
      Add('VALUES (:login, :haslo, :Imie, :Drugie_imie, :Nazwisko, :Nr_Telefonu, :Stanowisko)');
      ParamByName('Login').AsString := Trim(rzEdtLogin.Text);
      ParamByName('Haslo').AsString := Trim(rzEdtHaslo.Text);
      ParamByName('Imie').AsString := Trim(rzEdtImie.Text);
      ParamByName('Drugie_imie').AsString := Trim(rzEdtDrugieImie.Text);
      ParamByName('Nazwisko').AsString := Trim(rzEdtNazwisko.Text);
      ParamByName('Nr_Telefonu').AsString := Trim(rzEdtTelefon.Text);
      ParamByName('Stanowisko').AsString := rzCmBx1.Text;
      ExecSQL;
      DataModule1.ibTransTemp.Commit;
    end;

    with DataModule1.ibQryTemp, SQL do                    //po dodaniu w oknie wczesniejszym ustawiamy sie na nowym instruktorze
    begin
      Clear;
      Add('SELECT gen_id (gen_uzyt_id, 0) FROM rdb$database ');
      Open;
      generator := FieldByName('gen_id').AsInteger;
    end;

  except
    DataModule1.ibTransTemp.Rollback;
    ShowMessage('B³¹d nie uda³o siê utworzyæ nowego u¿ytkownika ');
  end;

end;
{
        //startuje historia
    try     //do zm. historia przypisuje legende + zawartosc editow
      historia := ' Utworzenie nowego instruk ' + #13#10;
      historia := historia + ' Login: ' + Edtlogin.Text + #13#10;
      historia := historia + ' Has³o zosta³o utworzone ' + #13#10;
      historia := historia + ' Imiê: ' + EdtImie.Text + #13#10;
      historia := historia + ' Nazwisko: ' + EdtNazwisko.Text + #13#10;
      historia := historia + ' Stanowisko: ' + cbbstanowisko.Text + #13#10;

      with DtMdl.IBQHistoria, SQL do
      begin
        Close;
        Clear;
        Add('INSERT INTO historia (panel, id_instruk, rekord, operacja, stanowisko_k) VALUES (:panel, :id_instruk, :rekord, :operacja, :stanowisko_k)');
        ParamByName('panel').AsInteger := 1;     // nr 1 panelu - dotyczy operacji na instruktorze
        ParamByName('id_instruk').AsInteger := FrmLogin.idinstruk;
        ParamByName('rekord').AsInteger := generator;
        ParamByName('operacja').AsString := historia;
        ParamByName('stanowisko_k').AsString := FrmLogin.NazwaKomp;
        ExecSQL;
        DtMdl.ibTransHistoria.Commit;
      end;
    except
      DtMdl.ibTransHistoria.Rollback;
      ShowMessage('B³¹d! Nie dodano wpisu w historii. SprawdŸ dane!');
    end;

    //koniec historia

    with DtMdl.IBQInstruk, SQL do            //odœwiezenie grida z instruktorami (wczytanie )
    begin
      Close;
      Clear;
      Add('SELECT id_instruk,Login,Imie,Nazwisko,Nr_Telefonu,Stanowisko,Data_utworzenia,Aktywny FROM instruk ');
      Add('WHERE stanowisko <>:stanowisko and Usun =:usun order by Nazwisko');
      ParamByName('Stanowisko').AsString := 'Administrator';
      ParamByName('Usun').AsInteger := 0;
      Open;
    end;
    DtMdl.IBQInstruk.Locate('id_instruk', generator, [loCaseInsensitive, loPartialKey]);        //znalezienie nowo dodanego

    if Application.MessageBox('Instruktorowi nale¿y przydzieliæ zajêcia !' + #13#10 + 'Czy prze³¹czyæ teraz do zak³adki "Przydziel zajêcia" ?', 'Uwaga !!!', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      RzPgCtrl1.ActivePageIndex := 1;
      edtPrzypImie.Text := EdtImie.Text;
      edtPrzypNazwisko.Text := EdtNazwisko.Text;
    end
    else
      close;


end;


}
//end;



procedure TFrmUstawienia.FormCreate(Sender: TObject);
begin
rzPgCntrl1.ActivePageIndex:=0;
end;

end.
