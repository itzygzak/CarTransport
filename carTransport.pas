unit carTransport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.CategoryButtons, Vcl.WinXCtrls,
  Vcl.ExtCtrls, RzPanel, Vcl.Imaging.pngimage, RzTabs;

type
  TFrmCarTransport = class(TForm)
    RzPnl1: TRzPanel;
    RzPnl2: TRzPanel;
    spltVw1: TSplitView;
    ctgryBtns1: TCategoryButtons;
    img1: TImage;
    RzPgCntrl1: TRzPageControl;
    RzTbshtLicencja: TRzTabSheet;
    RzTbshtOprogramie: TRzTabSheet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCarTransport: TFrmCarTransport;

implementation

{$R *.dfm}

end.
