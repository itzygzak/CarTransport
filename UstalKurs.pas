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
    rzGrpBox1: TRzGroupBox;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzDtmPckrData: TRzDateTimePicker;
    tmr1: TTimer;
    rzGrpBox2: TRzGroupBox;
    rzlbl4: TRzLabel;
    rzGrpBox3: TRzGroupBox;
    rzlbl5: TRzLabel;
    rzlbl6: TRzLabel;
    rzCmbxKierowca: TRzComboBox;
    rzCmbxPojazd: TRzComboBox;
    rzEdtWgDokum: TRzEdit;
    rzlbl3: TRzLabel;
    rzMmoUwagi: TRzMemo;
    rzGrpBox5: TRzGroupBox;
    rzlbl7: TRzLabel;
    rzlbl13: TRzLabel;
    tmPckrCzasPowrotu: TTimePicker;
    tmPckrCzasWysylki: TTimePicker;
    rzBtnUstal: TRzButton;
    rzDtmPckrDataPowrotu: TRzDateTimePicker;
    RzPnlAdres: TRzPanel;
    rzGrpBox4: TRzGroupBox;
    rzlbl8: TRzLabel;
    rzlbl9: TRzLabel;
    rzlbl10: TRzLabel;
    rzlbl11: TRzLabel;
    rzlbl12: TRzLabel;
    rzCmbxMiejsc: TRzComboBox;
    rzCmbxKod: TRzComboBox;
    rzCmbxUlica: TRzComboBox;
    rzCmbxGmina: TRzComboBox;
    rzCmbxPowiat: TRzComboBox;
    procedure img1Click(Sender: TObject);
    procedure rzBtnUstalClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rzCmbxKierowcaClick(Sender: TObject);
    procedure rzCmbxPojazdClick(Sender: TObject);
    procedure rzCmbxMiejscClick(Sender: TObject);
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

//uses
//  FrameZap;

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
  with DataModule1.ibQryTemp, SQL do
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

procedure TFrmUstalKurs.tmr1Timer(Sender: TObject);
begin
 // rzEdtTime.Text := TimeToStr(Time);
end;

end.

