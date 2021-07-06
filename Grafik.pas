unit Grafik;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.WinXCtrls, Vcl.ExtCtrls, RzPanel, Vcl.Imaging.pngimage,
  Vcl.CategoryButtons, Data.DB, Vcl.Grids, Vcl.DBGrids, SMDBGrid, Vcl.StdCtrls,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF, frxPreview;

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
    procedure img1Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ctgryBtns1Categories0Items4Click(Sender: TObject);
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

procedure TFrmGrafik.ctgryBtns1Categories0Items3Click(Sender: TObject);
begin
Close;
end;

procedure TFrmGrafik.ctgryBtns1Categories0Items4Click(Sender: TObject);
begin
  frXrprt1.ShowReport();
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
    //Usun =:usun ORDER BY Marka');
//    ParamByName('Usun').AsInteger := 0;
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

end.

