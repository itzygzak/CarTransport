unit Historia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  RzDBGrid, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzLabel, Vcl.ComCtrls, RzDTP,
  Vcl.ExtCtrls, RzPanel;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHistoria: TFrmHistoria;

implementation

{$R *.dfm}

end.
