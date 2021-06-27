unit UstalKurs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.WinXCtrls, Vcl.ExtCtrls, RzPanel, FrameZap, Vcl.CategoryButtons,
  Vcl.StdCtrls, RzLabel, RzButton, Vcl.Mask, RzEdit, Vcl.ComCtrls, RzDTP,
  RzCmboBx, Vcl.Imaging.pngimage, Vcl.WinXPickers;

type
  TFrmUstalKurs = class(TForm)
    RzPnl1: TRzPanel;
    RzPnl2: TRzPanel;
    img1: TImage;
    spltVw1: TSplitView;
    ctgryBtns1: TCategoryButtons;
    tmr1: TTimer;
    tmPckrCzasPowrotu: TTimePicker;
    rzBtnUstal: TRzButton;
    RzPnlAdres: TRzPanel;
    rzGrpBox4: TRzGroupBox;
    rzlbl8: TRzLabel;
    rzlbl9: TRzLabel;
    rzlbl10: TRzLabel;
    rzlbl11: TRzLabel;
    rzlbl12: TRzLabel;
    rzCmbxMiejsc: TRzComboBox;
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
    rzGrpBox5: TRzGroupBox;
    rzlbl7: TRzLabel;
    rzlbl13: TRzLabel;
    rzDtmPckrDataPowrotu: TRzDateTimePicker;
    rzEdtSzukMsc: TRzEdit;
    rzEdtMsc: TRzEdit;
    rzEdtGmina: TRzEdit;
    rzEdtPowiat: TRzEdit;
    rzEdtKodPoczt: TRzEdit;
    procedure img1Click(Sender: TObject);
    procedure rzBtnUstalClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rzCmbxKierowcaClick(Sender: TObject);
    procedure rzCmbxPojazdClick(Sender: TObject);
    procedure rzCmbxMiejscClick(Sender: TObject);
    procedure rzEdtSzukMscChange(Sender: TObject);
    procedure rzEdtSzukMscEnter(Sender: TObject);
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
    rzCmbxMiejsc.Items.LoadFromFile('c:\Dev\Delphi\CarTransport\SpisMiejscowosci.txt');
 {  with DataModule1.ibQryMsc, SQL do
  begin
    Close;
    Clear;
    Add('SELECT nazwa FROM miejscowosci ');
    Add('WHERE usun=:usun ORDER BY nazwa');
    ParamByName('usun').AsInteger := 0;
    Open;
  end;

   rzCmbxMiejsc.Items.Clear;
  while not DataModule1.ibQryTemp.Eof do
  begin
    rzCmbxMiejsc.Items.Add(DataModule1.ibQryTemp.FieldByName('nazwa').AsString);
    DataModule1.ibQryTemp.Next;
  end;
    rzEdtMsc.Text:=DataModule1.ibQryMsc.FieldValues['Nazwa'];
                                        }


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

procedure TFrmUstalKurs.rzCmbxKierowcaClick(Sender: TObject);
begin
  with DataModule1.ibQryTemp, SQL do
  begin
    Close;
    Clear;
    Add('SELECT nazwisko FROM kierowcy ');
    Add('WHERE usun=:usun ORDER BY nazwisko');
    ParamByName('usun').AsInteger := 0;
    Open;
  end;

  rzCmbxKierowca.Items.Clear;
  while not DataModule1.ibQryTemp.Eof do
  begin
    rzCmbxKierowca.Items.Add(DataModule1.ibQryTemp.FieldByName('nazwisko').AsString);
    DataModule1.ibQryTemp.Next;
  end;

end;

procedure TFrmUstalKurs.rzCmbxMiejscClick(Sender: TObject);
begin
{  with DataModule1.ibQryTemp, SQL do
  begin
    Close;
    Clear;
    Add('SELECT nazwa FROM miejscowosci ');
    Add('WHERE usun=:usun ORDER BY nazwa');
    ParamByName('usun').AsInteger := 0;
    Open;
  end;

  rzCmbxMiejsc.Items.Clear;
  while not DataModule1.ibQryTemp.Eof do
  begin
    rzCmbxMiejsc.Items.Add(DataModule1.ibQryTemp.FieldByName('nazwa').AsString);
    DataModule1.ibQryTemp.Next;
  end;
    rzEdtMsc.Text:=DataModule1.ibQryMsc.FieldValues['Nazwa'];      }




end;

procedure TFrmUstalKurs.rzCmbxPojazdClick(Sender: TObject);
begin
  with DataModule1.ibQryTemp, SQL do
  begin
    Close;
    Clear;
    Add('SELECT marka FROM pojazdy ');
    Add('WHERE usun=:usun ORDER BY marka');
    ParamByName('usun').AsInteger := 0;
    Open;
  end;

  rzCmbxPojazd.Items.Clear;
  while not DataModule1.ibQryTemp.Eof do
  begin
    rzCmbxPojazd.Items.Add(DataModule1.ibQryTemp.FieldByName('marka').AsString);
    DataModule1.ibQryTemp.Next;
  end;

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
   // rzEdtPowiat.Text := DataModule1.ibQryMsc.FieldValues['Wojewodztwo'];
    rzEdtKodPoczt.Text := DataModule1.ibQryMsc.FieldValues['kod_pocztowy'];
  end;

end;

procedure TFrmUstalKurs.rzEdtSzukMscEnter(Sender: TObject);
var
  zm_Nazwa: string;
begin
{zm_Nazwa := DataModule1.ibQryMsc.Fields;
rzEdtMsc.Text:=zm_Nazwa;}
//rzEdtMsc.Text:=DataModule1.ibQryMsc.Fields;
//DataModule1.ibQryMsc.FieldValues['Nazwa'] := rzEdtMsc.Text;
end;

procedure TFrmUstalKurs.tmr1Timer(Sender: TObject);
begin
 // rzEdtTime.Text := TimeToStr(Time);
end;

end.

