unit Definicje;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs,
  Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzLabel, RzCmboBx,
  RzButton, RzRadChk, Vcl.Imaging.pngimage, Vcl.WinXCtrls, Vcl.CategoryButtons;

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
    img1: TImage;
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
    rzEdtPrzeglad: TRzEdit;
    rzChckBxPrzyczepa: TRzCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items0Click(Sender: TObject);
    procedure RzTbshtKierowcyShow(Sender: TObject);
    procedure RzTbshtPojazdyShow(Sender: TObject);
    procedure RzTbshtMiejscowoœciShow(Sender: TObject);
    procedure ZapiszKierowce;
//    procedure DodajPojazd;
//    procedure DodajMiejscowosc;
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
    ZapiszKierowce;
  end
  else
  begin
    ShowMessage('DodajPojazd');
  end;
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
      Add('INSERT INTO kierowcy (Imie, Drugie_Imie, Nazwisko,Nr_telefonu, Czy_termin, Prawo_jazdy, Inne_1, Inne_2, Uwagi)');
      Add('VALUES (:Imie, :Drugie_imie, :Nazwisko, :Nr_Telefonu, :Czy_termin, :Prawo_jazdy, :Inne_1, :Inne_2, :Uwagi )');
      ParamByName('Imie').AsString := Trim(rzEdtImie.Text);
      ParamByName('Drugie_Imie').AsString := Trim(rzEdtDrugieImie.Text);
      ParamByName('Nazwisko').AsString := Trim(rzEdtNazwisko.Text);
      ParamByName('Nr_telefonu').AsString := Trim(rzEdtNrTelefonu.Text);
      ParamByName('Prawo_jazdy').AsString := Trim(rzCmbxPrawoJazdy.Text);
      ParamByName('Czy_termin').AsString := Trim(rzCmbxTermin.Text);
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
          Add('INSERT INTO historia (panel, id_kierowca, rekord, operacja, stanowisko_k) VALUES (:panel, :id_kierowca, :rekord, :operacja, :stanowisko_k)');
          ParamByName('panel').AsInteger := 2;
          ParamByName('id_kierowca').AsInteger := FrmLogin.IDUzyt;
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
end;

procedure TFrmDefinicje.ctgryBtns1Categories0Items3Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmDefinicje.FormCreate(Sender: TObject);
begin


 { chkKDR.Checked := False;
  chkZNW.Checked := False;
  cbbLokalizacja.ItemIndex := -1;
  EdtImie.SetFocus;

  edtPrzydzDrugieImie.Text := '';
  edtSzukajZaj.Text := '';
  dtpOd_Kiedy.DateTime := Now;}
end;

procedure TFrmDefinicje.img1Click(Sender: TObject);
begin
  img1.Picture.LoadFromFile('PrawkoPomoc.png');
end;

procedure TFrmDefinicje.img2Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;
end;

procedure TFrmDefinicje.RzTbshtKierowcyShow(Sender: TObject);
begin
  ctgryBtns1.Categories[0].Items[0].Caption := 'Dodaj kierowcê';
  RzPgCntrl1.ActivePageIndex := 0;
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
  ctgryBtns1.Categories[0].Items[0].Caption := 'Dodaj miejscowoœæ';
end;

procedure TFrmDefinicje.RzTbshtPojazdyShow(Sender: TObject);
begin
  ctgryBtns1.Categories[0].Items[0].Caption := 'Dodaj pojazd';

  rzEdtMarka.Text := '';
  rzEdtTyp.Text := '';
  rzEdtNrRej.Text := '';
  rzChckBxHDS.Checked := False;
  rzChckBxWinda.Checked := False;
  rzChckBxPrzyczepa.Checked := False;
  rzEdtInnyNr.Text := '';
  rzEdtPrzeglad.Text := '';
end;

end.

