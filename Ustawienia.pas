unit Ustawienia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.ExtCtrls, RzPanel,
  Vcl.Imaging.pngimage, RzTabs, Vcl.CategoryButtons;

type
  TFrmUstawienia = class(TForm)
    rzpnl1: TRzPanel;
    spltVw1: TSplitView;
    rzpnl2: TRzPanel;
    img1: TImage;
    rzPgCntrl1: TRzPageControl;
    rztbshtTabSheet1: TRzTabSheet;
    rztbshtTabSheet2: TRzTabSheet;
    rztbshtTabSheet3: TRzTabSheet;
    ctgryBtns1: TCategoryButtons;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUstawienia: TFrmUstawienia;

implementation

{$R *.dfm}

procedure TFrmUstawienia.FormCreate(Sender: TObject);
begin
rzPgCntrl1.ActivePageIndex:=0;
end;

end.
