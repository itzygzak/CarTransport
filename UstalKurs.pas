unit UstalKurs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.WinXCtrls, Vcl.ExtCtrls, RzPanel, Vcl.CategoryButtons, Vcl.StdCtrls,
  RzLabel, RzButton, Vcl.Mask, RzEdit, Vcl.ComCtrls, RzDTP, RzCmboBx,
  Vcl.Imaging.pngimage, Vcl.WinXPickers, Vcl.DBCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, RzDBGrid, RzLine, SMDBGrid, SMDBStat;

type
  TFrmUstalKurs = class(TForm)
    RzPnl1: TRzPanel;
    img1: TImage;
    spltVw1: TSplitView;
    ctgryBtns1: TCategoryButtons;
    RzPnl2: TRzPanel;
    rzGrpBoxDataWys: TRzGroupBox;
    rzDtmPckrDataWys: TRzDateTimePicker;
    tmPckrCzasWys: TTimePicker;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzGrpBoxWgDokum: TRzGroupBox;
    rzlbl3: TRzLabel;
    rzlbl4: TRzLabel;
    rzMmoUwagi: TRzMemo;
    rzEdtWgDokumentu: TRzEdit;
    rzGrpBoxPojazd: TRzGroupBox;
    rzlbl5: TRzLabel;
    rzlbl6: TRzLabel;
    rzEdtSzukPojazd: TRzEdit;
    SMDBgrdPojazd: TSMDBGrid;
    rzGrpBoxKierow: TRzGroupBox;
    dbtxtPojazd: TDBText;
    rzlbl7: TRzLabel;
    rzlbl8: TRzLabel;
    rzEdtSzukKierow: TRzEdit;
    SMDBgrdKierowcy: TSMDBGrid;
    dbtxtKierow: TDBText;
    smDbTnID_KIEROWCA: TSMDBButton;
    rzln2: TRzLine;
    rzDtmPckrDataPowrotu: TRzDateTimePicker;
    rzlbl9: TRzLabel;
    rzlbl10: TRzLabel;
    tmPckrGodzPowrotu: TTimePicker;
    rzlbl11: TRzLabel;
    rzlbl12: TRzLabel;
    rzlbl13: TRzLabel;
    rzGrpBoxMiejsc: TRzGroupBox;
    rzlbl14: TRzLabel;
    rzlbl15: TRzLabel;
    SMDBgrdMiejsc: TSMDBGrid;
    rzEdtSzukMiejsc: TRzEdit;
    dbtxtMiejsc: TDBText;
    rzlbl16: TRzLabel;
    procedure img1Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rzEdtSzukPojazdChange(Sender: TObject);
    procedure rzEdtSzukKierowChange(Sender: TObject);
    procedure smDbTnID_KIEROWCAClick(Sender: TObject);
    procedure ctgryBtns1Categories0Items0Click(Sender: TObject);
    procedure rzEdtSzukMiejscChange(Sender: TObject);
    procedure ZapiszWGrafiku;
    procedure FormCreate(Sender: TObject);
    procedure rzDtmPckrDataPowrotuChange(Sender: TObject);
    procedure ctgryBtns1Categories0Items4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ctgryBtns1Categories0Items1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUstalKurs: TFrmUstalKurs;

implementation

uses
  DM, Login, Grafik;

{$R *.dfm}

procedure TFrmUstalKurs.ZapiszWGrafiku;
begin
  with DataModule1.ibQryTemp, SQL do
  begin
    Close;
    Clear;
    Add('INSERT INTO Grafik (id_kierowca, id_pojazdy, id_miejscowosci,id_uzyt, data_wysylki, godz_wysylki, wg_dokument, uwagi, data_powrotu, godz_powrotu )');
    Add('values (:id_kierowca, :id_pojazdy, :id_miejscowosci,:id_uzyt, :data_wysylki, :godz_wysylki,:wg_dokument, :uwagi, :data_powrotu, :godz_powrotu)');
    ParamByName('id_kierowca').AsInteger := StrToInt(dbtxtKierow.Field.Value);
    ParamByName('id_pojazdy').AsInteger := StrToInt(dbtxtPojazd.Field.Value);
    ParamByName('id_miejscowosci').AsInteger := StrToInt(dbtxtMiejsc.Field.Value);
    ParamByName('id_uzyt').AsInteger := FrmLogin.IDUzyt;
    ParamByName('data_wysylki').AsDate := rzDtmPckrDataWys.Date;
    ParamByName('godz_wysylki').AsTime := tmPckrCzasWys.Time;
    ParamByName('wg_dokument').AsString := rzEdtWgDokumentu.Text;
    ParamByName('uwagi').AsString := rzMmoUwagi.Text;
    ParamByName('data_powrotu').AsDate := rzDtmPckrDataPowrotu.Date;
    ParamByName('godz_powrotu').AsTime := tmPckrGodzPowrotu.Time;
    ExecSQL;
    DataModule1.ibTransTemp.Commit;
  end;

end;

procedure TFrmUstalKurs.ctgryBtns1Categories0Items0Click(Sender: TObject);
begin
  if ((rzEdtWgDokumentu.Text = '') or (rzlbl11.Caption = '')) then
    // (dbtxtKierow.Field.Text ='')) then
  begin
    ShowMessage('Wype³nij wymagane pola')
  end
  else
    ZapiszWGrafiku;
  ShowMessage('Dane zosta³y zapisane. ');
end;

procedure TFrmUstalKurs.ctgryBtns1Categories0Items1Click(Sender: TObject);
begin
  FrmGrafik.frXrprt1.ShowReport();
end;

procedure TFrmUstalKurs.ctgryBtns1Categories0Items3Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmUstalKurs.ctgryBtns1Categories0Items4Click(Sender: TObject);
begin
  FrmGrafik.Top := FrmUstalKurs.Top + 50;
  FrmGrafik.Left := FrmUstalKurs.Left + 50;
  FrmGrafik.ShowModal;

end;

procedure TFrmUstalKurs.FormCreate(Sender: TObject);
begin
  DataModule1.ibQryKier.Close;
  DataModule1.ibQryPojazdy.Close;
  DataModule1.ibQryMsc.Close;
end;

procedure TFrmUstalKurs.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F9:
      ctgryBtns1.Categories[0].Items[0].OnClick(Sender);
    VK_F10:
      ctgryBtns1.Categories[0].Items[1].OnClick(Sender);
    VK_F11:
      ctgryBtns1.Categories[0].Items[4].OnClick(Sender);
    VK_F12:
      ctgryBtns1.Categories[0].Items[5].OnClick(Sender);

  end;
end;

procedure TFrmUstalKurs.FormShow(Sender: TObject);
begin

  rzDtmPckrDataWys.Date := Now;
  rzDtmPckrDataPowrotu.Date := Now;
  tmPckrCzasWys.Time := Now;
  tmPckrGodzPowrotu.Time := Now;

  with DataModule1.ibQryPojazdy, SQL do
  begin
    Close;
    Clear;
    Add('SELECT id_pojazdy, marka, typ, ladownosc, czy_hds, czy_winda, czy_przyczepa, nr_rej_pojazdu,inny_nr, przeglad_do FROM pojazdy ');
    Add('WHERE Usun =:usun ORDER BY Marka');
    ParamByName('Usun').AsInteger := 0;
    Open;
  end;

end;

procedure TFrmUstalKurs.img1Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;
end;

procedure TFrmUstalKurs.rzDtmPckrDataPowrotuChange(Sender: TObject);
begin
  if (rzDtmPckrDataWys.Date) > (rzDtmPckrDataPowrotu.Date) then
    ShowMessage('Data wysy³ki nie mo¿e byæ wczeœniejsza ni¿ data powrotu. To chyba oczywiste ?');
end;

procedure TFrmUstalKurs.rzEdtSzukMiejscChange(Sender: TObject);
var
  SzukMiejsc: string;
begin
  SzukMiejsc := rzEdtSzukMiejsc.Text;
  with DataModule1.ibQryMsc, SQL do
  begin
    Close;
    Clear;
    Add('SELECT id_miejscowosci, nazwa, kod_pocztowy, wojewodztwo, powiat, gmina, kraj FROM miejscowosci ');
    Add('WHERE usun=:usun');
    if rzEdtSzukMiejsc.Text <> '' then
      Add('AND (UPPER(nazwa) LIKE :i or UPPER(kod_pocztowy) LIKE :i)');
    ParamByName('usun').AsInteger := 0;
    if rzEdtSzukMiejsc.Text <> '' then
      ParamByName('i').AsString := '%' + UpperCase(SzukMiejsc) + '%';
    Open;
  end;
end;

procedure TFrmUstalKurs.rzEdtSzukKierowChange(Sender: TObject);
var
  SzukKier: string;
begin
  SzukKier := rzEdtSzukKierow.Text;
  with DataModule1.ibQryKier, SQL do
  begin
    Close;
    Clear;
    Add('SELECT id_kierowca, imie, nazwisko, nr_telefonu, prawo_jazdy, czy_termin FROM kierowcy ');
    Add('WHERE usun=:usun');
    if rzEdtSzukKierow.Text <> '' then
      Add('AND (UPPER(imie) LIKE :i or UPPER(nazwisko) LIKE :i)');
    ParamByName('usun').AsInteger := 0;
    if rzEdtSzukKierow.Text <> '' then
      ParamByName('i').AsString := '%' + UpperCase(SzukKier) + '%';
    Open;
  end;

end;

procedure TFrmUstalKurs.rzEdtSzukPojazdChange(Sender: TObject);
var
  SzukPoj: string;
begin
  SzukPoj := rzEdtSzukPojazd.Text;
  with DataModule1.ibQryPojazdy, SQL do
  begin
    Close;
    Clear;
    Add('SELECT id_pojazdy, marka, typ, ladownosc, czy_hds, czy_winda, czy_przyczepa, nr_rej_pojazdu,inny_nr, przeglad_do FROM pojazdy ');
    Add('WHERE usun=:usun');
    if rzEdtSzukPojazd.Text <> '' then
      Add('AND (UPPER(marka) LIKE :i or UPPER(typ) LIKE :i)');
    ParamByName('usun').AsInteger := 0;
    if rzEdtSzukPojazd.Text <> '' then
      ParamByName('i').AsString := '%' + UpperCase(SzukPoj) + '%';
    Open;
  end;
end;

procedure TFrmUstalKurs.smDbTnID_KIEROWCAClick(Sender: TObject);
begin
  with DataModule1.ibQryKier, SQL do
  begin
    Close;
    Clear;
    Add('SELECT id_kierowca, imie, nazwisko FROM kierowcy ');
    Add('WHERE nazwisko =:nazwisko');
    ParamByName('nazwisko').AsString := 'Kierowca firmy GS';
//    rzEdtSzukKierow.Text;
    // (DataModule1.ibQryKier.FieldByName('imie').AsString) +
    //(ParamByName('nazwisko').AsString);
    Open;
  end;
  rzlbl11.Caption := 'WYBRANO' + (DataModule1.ibQryKier.FieldByName('nazwisko').AsString);
end;

end.

