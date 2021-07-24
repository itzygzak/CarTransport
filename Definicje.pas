unit Definicje;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs,
  Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzLabel, RzCmboBx,
  RzButton, RzRadChk, Vcl.Imaging.pngimage, Vcl.WinXCtrls, Vcl.CategoryButtons,
  Vcl.ComCtrls, RzDTP, RzBHints;

type
  TFrmDefinicje = class(TForm)
    RzPnl1: TRzPanel;
    RzPnl2: TRzPanel;
    RzPgCntrl1: TRzPageControl;
    RzTbshtKierowcy: TRzTabSheet;
    RzTbshtPojazdy: TRzTabSheet;
    RzTbshtMiejscowoœci: TRzTabSheet;
    rzGrpBox1: TRzGroupBox;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzlbl3: TRzLabel;
    rzlbl4: TRzLabel;
    rzlbl5: TRzLabel;
    rzlbl6: TRzLabel;
    rzEdtImie: TRzEdit;
    rzEdtDrugieImie: TRzEdit;
    rzEdtNazwisko: TRzEdit;
    rzCmbxPrawoJazdy: TRzComboBox;
    rzEdtInne1: TRzEdit;
    rzEdtInne2: TRzEdit;
    rzGrpBox2: TRzGroupBox;
    rzGrpBox3: TRzGroupBox;
    rzlbl7: TRzLabel;
    rzlbl8: TRzLabel;
    rzlbl9: TRzLabel;
    rzlbl10: TRzLabel;
    rzlbl11: TRzLabel;
    rzEdtMiejscowosc: TRzEdit;
    rzEdtKod: TRzEdit;
    rzEdtWojew: TRzEdit;
    rzEdtPowiat: TRzEdit;
    rzEdtGmina: TRzEdit;
    rzlbl12: TRzLabel;
    rzlbl13: TRzLabel;
    rzlbl14: TRzLabel;
    rzlbl15: TRzLabel;
    rzlbl16: TRzLabel;
    rzlbl17: TRzLabel;
    rzlbl18: TRzLabel;
    rzlbl19: TRzLabel;
    rzEdtMarka: TRzEdit;
    rzEdtTyp: TRzEdit;
    rzEdtLadownosc: TRzEdit;
    rzEdtNrRej: TRzEdit;
    rzEdtInnyNr: TRzEdit;
    rzChckBxHDS: TRzCheckBox;
    rzChckBxWinda: TRzCheckBox;
    spltVw1: TSplitView;
    img2: TImage;
    ctgryBtns1: TCategoryButtons;
    rzMmo1: TRzMemo;
    rzlbl20: TRzLabel;
    rzlbl21: TRzLabel;
    rzEdtNrTelefonu: TRzEdit;
    rzCmbxTermin: TRzComboBox;
    rzlbl22: TRzLabel;
    rzlbl23: TRzLabel;
    rzChckBxPrzyczepa: TRzCheckBox;
    rzCmbxKraj: TRzComboBox;
    rzlbl24: TRzLabel;
    rzDtmPckr1: TRzDateTimePicker;
    img1: TImage;
    rzBlnHnts1: TRzBalloonHints;
    rzMmo2: TRzMemo;
    procedure img1Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items0Click(Sender: TObject);
    procedure RzTbshtKierowcyShow(Sender: TObject);
    procedure RzTbshtPojazdyShow(Sender: TObject);
    procedure RzTbshtMiejscowoœciShow(Sender: TObject);
    procedure ZapiszKierowce;
    procedure DodajPojazd;
    procedure FormShow(Sender: TObject);
    procedure DodajMiejscowosc;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ctgryBtns1Categories0Items1Click(Sender: TObject);
    procedure rzMmo2Click(Sender: TObject);
    procedure rzEdtNrTelefonuKeyPress(Sender: TObject; var Key: Char);
    procedure rzEdtKodKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDefinicje: TFrmDefinicje;

implementation

uses
  DM, Login;

{$R *.dfm}

procedure TFrmDefinicje.ctgryBtns1Categories0Items0Click(Sender: TObject);
begin
  if RzPgCntrl1.ActivePageIndex = 0 then
  begin
    if ((rzEdtImie.Text = '') or (rzEdtNazwisko.Text = '') or (rzEdtNrTelefonu.Text = '') or (rzCmbxPrawoJazdy.Text = '')) then
    begin
      ShowMessage('Wype³nij wymagane pola');
    end
    else
      ZapiszKierowce;
  end;

  if RzPgCntrl1.ActivePageIndex = 1 then
  begin
    if ((rzEdtMarka.Text = '') or (rzEdtTyp.Text = '') or (rzEdtNrRej.Text = '')) then
    begin
      ShowMessage('Wype³nij wymagane pola');
    end
    else
      DodajPojazd;
  end;

  if RzPgCntrl1.ActivePageIndex = 2 then
  begin
    if ((rzEdtMiejscowosc.Text = '') or (rzEdtWojew.Text = '') or (rzCmbxKraj.Text = '')) then
    begin
      ShowMessage('Wype³nij wymagane pola');
    end
    else
      DodajMiejscowosc;
  end;
end;

procedure TFrmDefinicje.DodajMiejscowosc;
var
  generator: Integer;
  historia: string;
begin
  try
    with DataModule1.ibQryTemp, SQL do
    begin
      Close;
      Clear;
      Add('INSERT INTO miejscowosci (Nazwa, Kod_pocztowy, Wojewodztwo, Powiat, Gmina, Kraj)');
      Add('VALUES (:Nazwa, :Kod_pocztowy, :Wojewodztwo, :Powiat, :Gmina, :Kraj )');
      ParamByName('Nazwa').AsString := Trim(rzEdtMiejscowosc.Text);
      ParamByName('Kod_pocztowy').AsString := Trim(rzEdtKod.Text);
      ParamByName('Wojewodztwo').AsString := Trim(rzEdtWojew.Text);
      ParamByName('Powiat').AsString := Trim(rzEdtPowiat.Text);
      ParamByName('Gmina').AsString := Trim(rzEdtGmina.Text);
      ParamByName('Kraj').AsString := rzCmbxKraj.Text;
      ExecSQL;
      DataModule1.ibTransTemp.Commit;
    end;

    with DataModule1.ibQryTemp, SQL do                    //po dodaniu w oknie wczesniejszym ustawiamy sie na nowym rekordzie
    begin
      Clear;
      Add('SELECT gen_id (gen_miejscowosci_id, 0) FROM rdb$database ');
      Open;
      generator := FieldByName('gen_id').AsInteger;
    end;

    begin
        //startuje historia
      try     //do zm. historia przypisuje legende + zawartosc editow
        historia := 'Dodanie nowej miejscowoœci ' + #13#10;
        historia := historia + ' Nazwa: ' + rzEdtMiejscowosc.Text + #13#10;
        historia := historia + ' Kod_pocztowy ' + rzEdtKod.Text + #13#10;

        with DataModule1.ibQryHistoria, SQL do
        begin
          Close;
          Clear;
          Add('INSERT INTO historia (panel, id_uzyt, rekord, operacja, stanowisko_k) VALUES (:panel, :id_uzyt, :rekord, :operacja, :stanowisko_k)');
          ParamByName('panel').AsInteger := 2;
          ParamByName('id_uzyt').AsInteger := FrmLogin.IDUzyt;
          ParamByName('rekord').AsInteger := generator;
          ParamByName('operacja').AsString := historia;
          ParamByName('stanowisko_k').AsString := FrmLogin.NazwaKomp;
          ExecSQL;
          DataModule1.ibTransHistoria.Commit;
        end;
      except
        DataModule1.ibTransHistoria.Rollback;
        ShowMessage('B³¹d! Nie dodano wpisu w historii. SprawdŸ dane!');
      end;
    end;
    //koniec historia

  except
    DataModule1.ibTransHistoria.Rollback;
    ShowMessage('B³¹d nie uda³o siê utworzyæ nowej miejscowoœci ');
  end;
  rzEdtMiejscowosc.Text := '';
  rzEdtKod.Text := '';
  rzEdtWojew.Text := '';
  rzEdtPowiat.Text := '';
  rzEdtGmina.Text := '';
end;

procedure TFrmDefinicje.DodajPojazd;
var
  generator: Integer;
  historia: string;
begin
  try
    with DataModule1.ibQryTemp, SQL do
    begin
      Close;
      Clear;
      Add('INSERT INTO pojazdy (Marka, Typ, Ladownosc, Czy_Hds, Czy_winda, Czy_przyczepa, Nr_rej_pojazdu, Inny_nr, przeglad_do)');
      Add('VALUES (:Marka, :Typ, :Ladownosc, :Czy_Hds, :Czy_winda, :Czy_przyczepa, :Nr_rej_pojazdu, :Inny_nr, :przeglad_do )');
      ParamByName('Marka').AsString := Trim(rzEdtMarka.Text);
      ParamByName('Typ').AsString := Trim(rzEdtTyp.Text);
      ParamByName('Ladownosc').AsString := Trim(rzEdtLadownosc.Text);
      ParamByName('Czy_Hds').AsBoolean := rzChckBxHDS.Checked;
      ParamByName('Czy_winda').AsBoolean := rzChckBxWinda.Checked;
      ParamByName('Czy_przyczepa').AsBoolean := rzChckBxPrzyczepa.Checked;
      ParamByName('Nr_rej_pojazdu').AsString := Trim(rzEdtNrRej.Text);
      ParamByName('Inny_nr').AsString := Trim(rzEdtInnyNr.Text);
      ParamByName('przeglad_do').AsDateTime := rzDtmPckr1.DateTime;
      ExecSQL;
      DataModule1.ibTransTemp.Commit;
    end;

  {  with DataModule1.ibQryTemp, SQL do                    //po dodaniu w oknie wczesniejszym ustawiamy sie na nowym instruktorze
    begin
      Clear;
      Add('SELECT gen_id (gen_pojazdy_id, 0) FROM rdb$database ');
      Open;
      generator := FieldByName('gen_id').AsInteger;
    end;   }

    begin
        //startuje historia
      try     //do zm. historia przypisuje legende + zawartosc editow
        historia := 'Dodanie nowego pojazdu ' + #13#10;
        historia := historia + ' Marka: ' + rzEdtMarka.Text + #13#10;
        historia := historia + ' Typ: ' + rzEdtTyp.Text + #13#10;

        with DataModule1.ibQryHistoria, SQL do
        begin
          Close;
          Clear;
          Add('INSERT INTO historia (panel, id_uzyt, rekord, operacja, stanowisko_k) VALUES (:panel, :id_uzyt, :rekord, :operacja, :stanowisko_k)');
          ParamByName('panel').AsInteger := 2;
          ParamByName('id_uzyt').AsInteger := FrmLogin.IDUzyt;
          ParamByName('rekord').AsInteger := generator;
          ParamByName('operacja').AsString := historia;
          ParamByName('stanowisko_k').AsString := FrmLogin.NazwaKomp;
          ExecSQL;
          DataModule1.ibTransHistoria.Commit;
        end;
      except
        DataModule1.ibTransHistoria.Rollback;
        ShowMessage('B³¹d! Nie dodano wpisu w historii. SprawdŸ dane!');
      end;
    end;
    //koniec historia

  except
    DataModule1.ibTransHistoria.Rollback;
    ShowMessage('B³¹d nie uda³o siê utworzyæ nowego kierowcy ');
  end;
  rzEdtMarka.Text := '';
  rzEdtTyp.Text := '';
  rzEdtNrRej.Text := '';
  rzChckBxHDS.Checked := False;
  rzChckBxWinda.Checked := False;
  rzChckBxPrzyczepa.Checked := False;
  rzEdtInnyNr.Text := '';
 // rzEdtPrzeglad.Text := '';
end;

procedure TFrmDefinicje.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F3:
      ctgryBtns1.Categories[0].Items[1].OnClick(Sender);
    VK_F9:
      ctgryBtns1.Categories[0].Items[0].OnClick(Sender);
    VK_F12:
      ctgryBtns1.Categories[0].Items[3].OnClick(Sender);
  end;
end;

procedure TFrmDefinicje.FormShow(Sender: TObject);
begin
  RzPgCntrl1.ActivePageIndex := 0;
end;

procedure TFrmDefinicje.ZapiszKierowce;
var
  generator: Integer;  //potrzebna do ustawienia siê na nowym rekordzie
  historia: string;   //potrzebna do zapisu historia

begin
  try
    with DataModule1.ibQryTemp, SQL do
    begin
      Close;
      Clear;
      Add('INSERT INTO kierowcy (Imie, Drugie_Imie, Nazwisko, Nr_telefonu, Prawo_jazdy, Czy_termin,  Inne_1, Inne_2, Uwagi)');
      Add('VALUES (:Imie, :Drugie_imie, :Nazwisko, :Nr_Telefonu, :Prawo_jazdy, :Czy_termin, :Inne_1, :Inne_2, :Uwagi )');
      ParamByName('Imie').AsString := Trim(rzEdtImie.Text);
      ParamByName('Drugie_Imie').AsString := Trim(rzEdtDrugieImie.Text);
      ParamByName('Nazwisko').AsString := Trim(rzEdtNazwisko.Text);
      ParamByName('Nr_telefonu').AsString := Trim(rzEdtNrTelefonu.Text);
      ParamByName('Prawo_jazdy').AsString := rzCmbxPrawoJazdy.Text;
      ParamByName('Czy_termin').AsString := rzCmbxTermin.Text;
      ParamByName('Inne_1').AsString := Trim(rzEdtInne1.Text);
      ParamByName('Inne_2').AsString := Trim(rzEdtInne2.Text);
      ParamByName('Uwagi').AsString := Trim(rzMmo1.Text);
      ExecSQL;
      DataModule1.ibTransTemp.Commit;
    end;

    with DataModule1.ibQryTemp, SQL do                    //po dodaniu w oknie wczesniejszym ustawiamy sie na nowym instruktorze
    begin
      Clear;
      Add('SELECT gen_id (gen_kierowcy_id, 0) FROM rdb$database ');
      Open;
      generator := FieldByName('gen_id').AsInteger;
    end;

    begin
        //startuje historia
      try     //do zm. historia przypisuje legende + zawartosc editow
        historia := 'Utworzenie nowego kierowcy ' + #13#10;
        historia := historia + ' Imie: ' + rzEdtImie.Text + #13#10;
        historia := historia + ' Nazwisko: ' + rzEdtNazwisko.Text + #13#10;

        with DataModule1.ibQryHistoria, SQL do
        begin
          Close;
          Clear;
          Add('INSERT INTO historia (panel, id_uzyt, rekord, operacja, stanowisko_k) VALUES (:panel, :id_uzyt, :rekord, :operacja, :stanowisko_k)');
          ParamByName('panel').AsInteger := 2;
          ParamByName('id_uzyt').AsInteger := FrmLogin.IDUzyt;
          ParamByName('rekord').AsInteger := generator;
          ParamByName('operacja').AsString := historia;
          ParamByName('stanowisko_k').AsString := FrmLogin.NazwaKomp;
          ExecSQL;
          DataModule1.ibTransHistoria.Commit;
        end;
      except
        DataModule1.ibTransHistoria.Rollback;
        ShowMessage('B³¹d! Nie dodano wpisu w historii. SprawdŸ dane!');
      end;
    end;

    //koniec historia

  except
    DataModule1.ibTransHistoria.Rollback;
    ShowMessage('B³¹d nie uda³o siê utworzyæ nowego kierowcy ');
  end;

  rzEdtImie.Text := '';
  rzEdtDrugieImie.Text := '';
  rzEdtNazwisko.Text := '';
  rzEdtNrTelefonu.Text := '';
  rzCmbxPrawoJazdy.ItemIndex := -1;
  rzCmbxTermin.ItemIndex := -1;
  rzEdtInne1.Text := '';
  rzEdtInne2.Text := '';
  rzMmo1.Text := '';

end;

procedure TFrmDefinicje.ctgryBtns1Categories0Items1Click(Sender: TObject);
begin
case Application.MessageBox('Je¿eli anulujesz, okno zostanie zamkniête, ' + #13#10 + '¿adne zmiany nie zostan¹ zapisane.', 'Caption', MB_YESNO + MB_ICONWARNING) of
    IDYES:
      begin
        Close;
      end;
    IDNO:
      begin
        RzPgCntrl1.SetFocus;
      end;
  end;
end;

procedure TFrmDefinicje.ctgryBtns1Categories0Items3Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmDefinicje.img1Click(Sender: TObject);
begin
rzMmo2.Visible:=True;
end;

procedure TFrmDefinicje.img2Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;
end;

procedure TFrmDefinicje.rzEdtKodKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#9]) then
begin
  Key := #0;
  MessageBeep(0);
end;
end;

procedure TFrmDefinicje.rzEdtNrTelefonuKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#9]) then
begin
  Key := #0;
  MessageBeep(0);
end;
end;

procedure TFrmDefinicje.rzMmo2Click(Sender: TObject);
begin
rzMmo2.Visible:=False;
end;

procedure TFrmDefinicje.RzTbshtKierowcyShow(Sender: TObject);
begin
  ctgryBtns1.Categories[0].Items[0].Caption := '[F9]  Dodaj kierowcê';

  rzEdtImie.Text := '';
  rzEdtDrugieImie.Text := '';
  rzEdtNazwisko.Text := '';
  rzEdtNrTelefonu.Text := '';
  rzCmbxPrawoJazdy.ItemIndex := -1;
  rzCmbxTermin.ItemIndex := -1;
  rzEdtInne1.Text := '';
  rzEdtInne2.Text := '';

end;

procedure TFrmDefinicje.RzTbshtMiejscowoœciShow(Sender: TObject);
begin
  ctgryBtns1.Categories[0].Items[0].Caption := 'Dodaj miejscowoœæ [F9]';

  rzEdtMiejscowosc.Text := '';
  rzEdtKod.Text := '';
  rzEdtWojew.Text := '';
  rzEdtPowiat.Text := '';
  rzEdtGmina.Text := '';
end;

procedure TFrmDefinicje.RzTbshtPojazdyShow(Sender: TObject);
begin
  ctgryBtns1.Categories[0].Items[0].Caption := 'Dodaj pojazd [F9]';

  rzEdtMarka.Text := '';
  rzEdtTyp.Text := '';
  rzEdtNrRej.Text := '';
  rzChckBxHDS.Checked := False;
  rzChckBxWinda.Checked := False;
  rzChckBxPrzyczepa.Checked := False;
  rzEdtInnyNr.Text := '';
  rzDtmPckr1.DateTime := Now;
end;

end.

