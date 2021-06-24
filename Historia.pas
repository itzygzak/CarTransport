unit Historia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.Grids, Vcl.DBGrids, RzDBGrid, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzLabel,
  Vcl.ComCtrls, RzDTP, Vcl.ExtCtrls, RzPanel, Vcl.CategoryButtons,
  Vcl.Imaging.pngimage, Vcl.WinXCtrls;

type
  TFrmHistoria = class(TForm)
    RzPnl1: TRzPanel;
    RzPnl2: TRzPanel;
    rzDtmPckrOd: TRzDateTimePicker;
    rzDtmPckrDo: TRzDateTimePicker;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    RzPnl3: TRzPanel;
    RzDBGrd1: TRzDBGrid;
    spltVw1: TSplitView;
    img1: TImage;
    ctgryBtns1: TCategoryButtons;
    procedure ctgryBtns1Categories0Items2Click(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure Szukaj;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ctgryBtns1Categories0Items0Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHistoria: TFrmHistoria;

implementation

uses
  DM;

{$R *.dfm}

procedure TFrmHistoria.ctgryBtns1Categories0Items0Click(Sender: TObject);
begin
  with DataModule1.ibQryHistoria, SQL do
  begin
    Close;
    Clear;
    Add('SELECT h.data_zdarz, h.operacja, h.stanowisko_k, u.imie, u.nazwisko, u.login FROM historia h INNER JOIN uzyt u ON (h.id_uzyt = u.id_uzyt)');
    Add('WHERE h.data_zdarz >=:data_zdarzOD AND h.data_zdarz <=:data_zdarzDO ');
    ParamByName('data_zdarzOD').AsDateTime := rzDtmPckrOd.DateTime;
    ParamByName('data_zdarzDO').AsDateTime := rzDtmPckrDo.DateTime;
    Open;
  end;
end;

procedure TFrmHistoria.ctgryBtns1Categories0Items2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmHistoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.ibQryHistoria.Close;
end;

procedure TFrmHistoria.FormCreate(Sender: TObject);
begin
  rzDtmPckrOd.Date := Now;
  rzDtmPckrDo.Date := Now;
end;

procedure TFrmHistoria.img1Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;
end;

procedure TFrmHistoria.Szukaj;
begin
 //
end;

end.

