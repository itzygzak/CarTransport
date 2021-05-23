unit FrameDefiniujUnit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls,
  RzPanel, Vcl.StdCtrls, RzLabel;

type
  TFrameDef = class(TFrame)
    RzPnl1: TRzPanel;
    RzPgCntrl1: TRzPageControl;
    RzTbshtKierowcy: TRzTabSheet;
    RzTbshtSamochody: TRzTabSheet;
    RzTbshtMiejscowosci: TRzTabSheet;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzlbl3: TRzLabel;
    rzlbl4: TRzLabel;
    rzlbl5: TRzLabel;
    rzlbl6: TRzLabel;
    rzlbl7: TRzLabel;
    rzlbl8: TRzLabel;
    rzlbl9: TRzLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
