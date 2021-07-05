unit carTransport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.CategoryButtons, Vcl.WinXCtrls,
  Vcl.ExtCtrls, RzPanel;

type
  TForm1 = class(TForm)
    RzPnl1: TRzPanel;
    RzPnl2: TRzPanel;
    spltVw1: TSplitView;
    ctgryBtns1: TCategoryButtons;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
