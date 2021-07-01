unit UstalKurs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.WinXCtrls, Vcl.ExtCtrls, RzPanel, FrameZap, Vcl.CategoryButtons,
  Vcl.StdCtrls, RzLabel, RzButton, Vcl.Mask, RzEdit, Vcl.ComCtrls, RzDTP,
  RzCmboBx, Vcl.Imaging.pngimage, Vcl.WinXPickers, Vcl.DBCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, RzDBGrid, RzLine;

type
  TFrmUstalKurs = class(TForm)
    RzPnl1: TRzPanel;
    img1: TImage;
    spltVw1: TSplitView;
    ctgryBtns1: TCategoryButtons;
    rzBtnUstal: TRzButton;
    RzPnl2: TRzPanel;
    rzGrpBoxDataWys: TRzGroupBox;
    rzDtmPckrDataWys: TRzDateTimePicker;
    tmPckrCzasWys: TTimePicker;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzln1: TRzLine;
    rzGrpBoxWgDokum: TRzGroupBox;
    rzlbl3: TRzLabel;
    rzlbl4: TRzLabel;
    rzMmoUwagi: TRzMemo;
    rzEdtWgDokumentu: TRzEdit;
    procedure img1Click(Sender: TObject);
    procedure rzBtnUstalClick(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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

procedure TFrmUstalKurs.FormShow(Sender: TObject);
begin

//dtPckrDataPowrotu.Date:=Now;
  {tmPckrCzasWysylki.Time := Now;
  tmPckrCzasPowrotu.Time := Now;}

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

end.

