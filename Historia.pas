unit Historia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.Grids, Vcl.DBGrids, RzDBGrid, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzLabel,
  Vcl.ComCtrls, RzDTP, Vcl.ExtCtrls, RzPanel, Vcl.CategoryButtons,
  Vcl.Imaging.pngimage, Vcl.WinXCtrls, SMDBGrid, Vcl.DBCtrls;

type
  TFrmHistoria = class(TForm)
    RzPnl1: TRzPanel;
    spltVw1: TSplitView;
    img1: TImage;
    ctgryBtns1: TCategoryButtons;
    RzPnl5: TRzPanel;
    RzPnl2: TRzPanel;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzlbl3: TRzLabel;
    rzlbl4: TRzLabel;
    rzDtmPckrOd: TRzDateTimePicker;
    rzDtmPckrDo: TRzDateTimePicker;
    trckBr1: TTrackBar;
    RzPnl3: TRzPanel;
    SMDBgrdHistoria: TSMDBGrid;
    RzPnl4: TRzPanel;
    dbmmoHistoria: TDBMemo;
    procedure ctgryBtns1Categories0Items2Click(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ctgryBtns1Categories0Items0Click(Sender: TObject);
    procedure trckBr1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
  with DataModule1.ibQryHistUzyt, SQL do
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
  rzDtmPckrOd.Date := StrToDate('01.07.2021');//Now;
  rzDtmPckrDo.Date := Now;
end;

procedure TFrmHistoria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case Key of
    VK_F5:
      ctgryBtns1.Categories[0].Items[0].OnClick(Sender);
    VK_F12:
      ctgryBtns1.Categories[0].Items[2].OnClick(Sender);
  end;
end;

procedure TFrmHistoria.img1Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;
end;

procedure TFrmHistoria.trckBr1Change(Sender: TObject);
begin
SMDBgrdHistoria.Font.Size := trckBr1.Position + 1;
dbmmoHistoria.Font.Size := trckBr1.Position + 1;
end;

end.

