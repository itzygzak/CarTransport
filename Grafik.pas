unit Grafik;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.WinXCtrls, Vcl.ExtCtrls, RzPanel, Vcl.Imaging.pngimage,
  Vcl.CategoryButtons, Data.DB, Vcl.Grids, Vcl.DBGrids, SMDBGrid, Vcl.StdCtrls,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF, frxPreview, RzLabel,
  Vcl.ComCtrls, RzDTP, Vcl.DBCtrls;

type
  TFrmGrafik = class(TForm)
    rzpnl1: TRzPanel;
    rzpnl2: TRzPanel;
    spltVw1: TSplitView;
    img1: TImage;
    ctgryBtns1: TCategoryButtons;
    SMDBgrdGrafik: TSMDBGrid;
    frXdbDtst1: TfrxDBDataset;
    frXrprt1: TfrxReport;
    frXdbDtst2: TfrxDBDataset;
    trckBr1: TTrackBar;
    rzDtmPckrOd: TRzDateTimePicker;
    rzDtmPckrDo: TRzDateTimePicker;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzlbl3: TRzLabel;
    rzlbl4: TRzLabel;
    RzPnl3: TRzPanel;
    dbmmoUwagi: TDBMemo;
    procedure img1Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ctgryBtns1Categories0Items4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ctgryBtns1Categories0Items1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure trckBr1Change(Sender: TObject);
    procedure ctgryBtns1Categories0Items0Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGrafik: TFrmGrafik;

implementation

uses
  DM;


{$R *.dfm}

procedure TFrmGrafik.ctgryBtns1Categories0Items0Click(Sender: TObject);
begin
  rzDtmPckrOd.Date := Now;
  with DataModule1.ibQryGrafik, SQL do
  begin
    Close;
    Clear;
    Add('SELECT  k.imie, k.nazwisko, p.marka, p.typ, p.ladownosc, m.nazwa, m.kod_pocztowy, g.data_wysylki, ');
    Add('g.godz_wysylki, g.wg_dokument, g.uwagi, g.data_powrotu, g.godz_powrotu FROM kierowcy k, pojazdy p, miejscowosci m, grafik g ');
    Add('WHERE k.id_kierowca = g.id_kierowca AND p.id_pojazdy = g.id_pojazdy AND m.id_miejscowosci = g.id_miejscowosci');
    Add('AND g.data_wysylki =:data_wysylkiOD ');
    ParamByName('data_wysylkiOD').AsDate := rzDtmPckrOd.Date;
    Open;
  end;
end;

procedure TFrmGrafik.ctgryBtns1Categories0Items1Click(Sender: TObject);
begin
  with DataModule1.ibQryGrafik, SQL do
  begin
    Close;
    Clear;
    Add('SELECT  k.imie, k.nazwisko, p.marka, p.typ, p.ladownosc, m.nazwa, m.kod_pocztowy, g.data_wysylki, ');
    Add('g.godz_wysylki, g.wg_dokument, g.uwagi, g.data_powrotu, g.godz_powrotu FROM kierowcy k, pojazdy p, miejscowosci m, grafik g ');
    Add('WHERE k.id_kierowca = g.id_kierowca AND p.id_pojazdy = g.id_pojazdy AND m.id_miejscowosci = g.id_miejscowosci');
    Add('AND g.data_wysylki >=:data_wysylkiOD ');
    ParamByName('data_wysylkiOD').AsDateTime := rzDtmPckrOd.DateTime;
    Open;
  end;

end;

procedure TFrmGrafik.ctgryBtns1Categories0Items2Click(Sender: TObject);
begin
 ShowMessage('Dostêpne niebawem');
end;

procedure TFrmGrafik.ctgryBtns1Categories0Items3Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmGrafik.ctgryBtns1Categories0Items4Click(Sender: TObject);
begin
  frXrprt1.ShowReport();
end;

procedure TFrmGrafik.FormCreate(Sender: TObject);
begin
  rzDtmPckrOd.Date := StrToDate('01.07.2021');
  rzDtmPckrDo.Date := Now;
end;

procedure TFrmGrafik.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F5:
      ctgryBtns1.Categories[0].Items[1].OnClick(Sender);
    VK_F6:
      ctgryBtns1.Categories[0].Items[0].OnClick(Sender);
    VK_F11:
      ctgryBtns1.Categories[0].Items[3].OnClick(Sender);
    VK_F12:
      ctgryBtns1.Categories[0].Items[5].OnClick(Sender);
    VK_F7:
      ctgryBtns1.Categories[0].Items[2].OnClick(Sender);
  end;
end;

procedure TFrmGrafik.FormShow(Sender: TObject);
begin

  with DataModule1.ibQryGrafik, SQL do
  begin
    Close;
    Clear;
    Add('SELECT  k.imie, k.nazwisko, p.marka, p.typ, p.ladownosc, m.nazwa, m.kod_pocztowy, g.data_wysylki, ');
    Add('g.godz_wysylki, g.wg_dokument, g.uwagi, g.data_powrotu, g.godz_powrotu FROM kierowcy k, pojazdy p, miejscowosci m, grafik g ');
    Add('WHERE k.id_kierowca = g.id_kierowca AND p.id_pojazdy = g.id_pojazdy AND m.id_miejscowosci = g.id_miejscowosci');
    Open;
  end;
end;

procedure TFrmGrafik.img1Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;

end;

procedure TFrmGrafik.trckBr1Change(Sender: TObject);
begin
 dbmmoUwagi.Font.Size := trckBr1.Position +1;
 SMDBgrdGrafik.Font.Size := trckBr1.Position + 1;

end;

end.

