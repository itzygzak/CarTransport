unit UstalKurs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.WinXCtrls, Vcl.ExtCtrls, RzPanel, FrameZap, Vcl.CategoryButtons,
  Vcl.StdCtrls, RzLabel, RzButton, Vcl.Mask, RzEdit, Vcl.ComCtrls, RzDTP,
  RzCmboBx, Vcl.Imaging.pngimage, Vcl.WinXPickers, Vcl.DBCtrls;

type
  TFrmUstalKurs = class(TForm)
    RzPnl1: TRzPanel;
    RzPnl2: TRzPanel;
    img1: TImage;
    spltVw1: TSplitView;
    ctgryBtns1: TCategoryButtons;
    tmr1: TTimer;
    rzBtnUstal: TRzButton;
    RzPnlAdres: TRzPanel;
    rzGrpBox4: TRzGroupBox;
    rzlbl8: TRzLabel;
    rzlbl9: TRzLabel;
    rzlbl10: TRzLabel;
    rzlbl11: TRzLabel;
    rzlbl12: TRzLabel;
    rzCmbxUlica: TRzComboBox;
    rzGrpBox3: TRzGroupBox;
    rzlbl5: TRzLabel;
    rzlbl6: TRzLabel;
    rzCmbxKierowca: TRzComboBox;
    rzCmbxPojazd: TRzComboBox;
    RzPnlPrawy: TRzPanel;
    rzGrpBox1: TRzGroupBox;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzDtmPckrData: TRzDateTimePicker;
    tmPckrCzasWysylki: TTimePicker;
    rzGrpBox2: TRzGroupBox;
    rzlbl4: TRzLabel;
    rzlbl3: TRzLabel;
    rzEdtWgDokum: TRzEdit;
    rzMmoUwagi: TRzMemo;
    rzEdtSzukMsc: TRzEdit;
    rzEdtMsc: TRzEdit;
    rzEdtGmina: TRzEdit;
    rzEdtPowiat: TRzEdit;
    rzEdtKodPoczt: TRzEdit;
    rzCmbxMsc: TRzComboBox;
    rzGrpBox5: TRzGroupBox;
    rzlbl7: TRzLabel;
    rzlbl13: TRzLabel;
    rzDtmPckrDataPowrotu: TRzDateTimePicker;
    tmPckrCzasPowrotu: TTimePicker;
    dbtxtKierowca: TDBText;
    procedure img1Click(Sender: TObject);
    procedure rzBtnUstalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rzEdtSzukMscChange(Sender: TObject);
    procedure PokazKierowcow;
    procedure PokazPojazdy;
    procedure rzEdtSzukMscClick(Sender: TObject);
    procedure rzCmbxKierowcaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUstalKurs: TFrmUstalKurs;

implementation

uses
  DM;

{$R *.dfm}

procedure TFrmUstalKurs.PokazPojazdy;
begin
  with DataModule1.ibQryTemp, SQL do
  begin
    Close;
    Clear;
    Add('SELECT marka, typ FROM pojazdy ');
    Add('WHERE usun=:usun ORDER BY marka');
    ParamByName('usun').AsInteger := 0;
    Open;
  end;

  rzCmbxPojazd.Items.Clear;
  while not DataModule1.ibQryTemp.Eof do
  begin
    rzCmbxPojazd.Items.Add(DataModule1.ibQryTemp.FieldByName('marka').AsString  + ' ' + DataModule1.ibQryTemp.FieldByName('typ').AsString);
    DataModule1.ibQryTemp.Next;
  end;

end;

procedure TFrmUstalKurs.PokazKierowcow;
begin
  with DataModule1.ibQryKier, SQL do
  begin
    Close;
    Clear;
    Add('SELECT id_kierowca,imie,nazwisko FROM kierowcy ');
    Add('WHERE id_kierowca=:id_kierowca AND usun=:usun ORDER BY nazwisko');
    ParamByName('id_kierowca').AsInteger:=DataModule1.ibQryKier.FieldByName('id_kierowca').AsInteger;
    ParamByName('usun').AsInteger := 0;
    Open;
  end;

  rzCmbxKierowca.Items.Clear;
  while not DataModule1.ibQryKier.Eof do
  begin
    rzCmbxKierowca.Items.Add(DataModule1.ibQryKier.FieldByName('id_kierowca').AsString  + ' ' + DataModule1.ibQryKier.FieldByName('imie').AsString  + ' ' + DataModule1.ibQryKier.FieldByName('nazwisko').AsString);
    DataModule1.ibQryKier.Next;
  end;
end;

procedure TFrmUstalKurs.ctgryBtns1Categories0Items3Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmUstalKurs.FormCreate(Sender: TObject);
var
  data: TDate;
begin
  rzDtmPckrData.Date := Now;
end;

procedure TFrmUstalKurs.FormShow(Sender: TObject);
begin

//dtPckrDataPowrotu.Date:=Now;
  tmPckrCzasWysylki.Time := Now;
  tmPckrCzasPowrotu.Time := Now;
  PokazKierowcow;
  PokazPojazdy;

end;

procedure TFrmUstalKurs.img1Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;
end;

procedure TFrmUstalKurs.rzBtnUstalClick(Sender: TObject);
begin
  Application.MessageBox('Zosta³y ustalone parametry wysy³ki. ' + #13#10 + 'Je¿eli podane parametry s¹ prawid³owe, zapisz dane i ' + #13#10 + 'wydrukuj list przewozowy.', 'Application.Title', MB_OK + MB_ICONINFORMATION);

end;

procedure TFrmUstalKurs.rzCmbxKierowcaChange(Sender: TObject);
begin

dbtxtKierowca.Field.FieldName:=DataModule1.ibQryKier.FieldValues['id_kierowca'];

end;

procedure TFrmUstalKurs.rzEdtSzukMscChange(Sender: TObject);
var
  SzukMsc: string;
begin
  SzukMsc := rzEdtSzukMsc.Text;
  with DataModule1.ibQryMsc, SQL do
  begin
    Close;
    Clear;
    Add('SELECT id_miejscowosci, Nazwa,Gmina, Kod_Pocztowy, Wojewodztwo, Powiat FROM miejscowosci ');
    Add('WHERE usun=:usun');
    if rzEdtSzukMsc.Text <> '' then
      Add('AND (UPPER(Nazwa) LIKE :a or UPPER(Wojewodztwo) LIKE :a)');
        // ParamByName('Stanowisko').AsString := 'Administrator';
    ParamByName('usun').AsInteger := 0;
    if rzEdtSzukMsc.Text <> '' then
      ParamByName('a').AsString := '%' + UpperCase(SzukMsc) + '%';
    Open;
    rzEdtMsc.Text := DataModule1.ibQryMsc.FieldValues['Nazwa'];
    rzEdtGmina.Text := DataModule1.ibQryMsc.FieldValues['Gmina'];
    rzEdtPowiat.Text := DataModule1.ibQryMsc.FieldValues['Powiat'];
    rzEdtKodPoczt.Text := DataModule1.ibQryMsc.FieldValues['kod_pocztowy'];
  end;

end;

procedure TFrmUstalKurs.rzEdtSzukMscClick(Sender: TObject);
begin
//edt
end;

end.

