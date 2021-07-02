unit Grafik;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.WinXCtrls, Vcl.ExtCtrls, RzPanel, Vcl.Imaging.pngimage,
  Vcl.CategoryButtons, Data.DB, Vcl.Grids, Vcl.DBGrids, SMDBGrid;

type
  TFrmGrafik = class(TForm)
    rzpnl1: TRzPanel;
    rzpnl2: TRzPanel;
    spltVw1: TSplitView;
    img1: TImage;
    ctgryBtns1: TCategoryButtons;
    SMDBgrdGrafik: TSMDBGrid;
    procedure img1Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGrafik: TFrmGrafik;

implementation
uses DM;


{$R *.dfm}

procedure TFrmGrafik.ctgryBtns1Categories0Items3Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmGrafik.img1Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;

end;

end.

