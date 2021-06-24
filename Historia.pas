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
    rzEdtWartosc: TRzEdit;
    rzlbl3: TRzLabel;
    RzPnl3: TRzPanel;
    RzDBGrd1: TRzDBGrid;
    spltVw1: TSplitView;
    img1: TImage;
    ctgryBtns1: TCategoryButtons;
    procedure rzEdtWartoscChange(Sender: TObject);
    procedure ctgryBtns1Categories0Items2Click(Sender: TObject);
    procedure img1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHistoria: TFrmHistoria;

implementation
uses DM;

{$R *.dfm}

procedure TFrmHistoria.ctgryBtns1Categories0Items2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmHistoria.img1Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;
end;

procedure TFrmHistoria.rzEdtWartoscChange(Sender: TObject);
begin
//search auto
end;

end.

