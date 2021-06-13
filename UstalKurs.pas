unit UstalKurs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.ExtCtrls, RzPanel;

type
  TFrmUstalKurs = class(TForm)
    RzPnl1: TRzPanel;
    RzPnl2: TRzPanel;
    spltVw1: TSplitView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUstalKurs: TFrmUstalKurs;

implementation

{$R *.dfm}

end.
