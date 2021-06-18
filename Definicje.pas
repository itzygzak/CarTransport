unit Definicje;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, RzPanel,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzLabel, RzCmboBx, RzButton, RzRadChk,
  Vcl.Imaging.pngimage, Vcl.WinXCtrls, Vcl.CategoryButtons;

type
  TFrmDefinicje = class(TForm)
    RzPnl1: TRzPanel;
    RzPnl2: TRzPanel;
    RzPgCntrl1: TRzPageControl;
    RzTbshtKierowcy: TRzTabSheet;
    RzTbshtPojazdy: TRzTabSheet;
    RzTbshtMiejscowoœci: TRzTabSheet;
    rzGrpBox1: TRzGroupBox;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzlbl3: TRzLabel;
    rzlbl4: TRzLabel;
    rzlbl5: TRzLabel;
    rzlbl6: TRzLabel;
    rzEdtImie: TRzEdit;
    rzEdtDrugieImie: TRzEdit;
    rzEdtNazwisko: TRzEdit;
    rzCmbxPrawoJazdy: TRzComboBox;
    rzEdtInne1: TRzEdit;
    rzEdtInne2: TRzEdit;
    rzGrpBox2: TRzGroupBox;
    rzGrpBox3: TRzGroupBox;
    rzlbl7: TRzLabel;
    rzlbl8: TRzLabel;
    rzlbl9: TRzLabel;
    rzlbl10: TRzLabel;
    rzlbl11: TRzLabel;
    rzEdtMiejscowosc: TRzEdit;
    rzEdtKod: TRzEdit;
    rzEdtWojew: TRzEdit;
    rzEdtPowiat: TRzEdit;
    rzEdtGmina: TRzEdit;
    rzlbl12: TRzLabel;
    rzlbl13: TRzLabel;
    rzlbl14: TRzLabel;
    rzlbl15: TRzLabel;
    rzlbl16: TRzLabel;
    rzlbl17: TRzLabel;
    rzlbl18: TRzLabel;
    rzlbl19: TRzLabel;
    rzEdtMarka: TRzEdit;
    rzEdtTyp: TRzEdit;
    rzEdtLadownosc: TRzEdit;
    rzEdtNrRej: TRzEdit;
    rzEdtInnyNr: TRzEdit;
    rzChckBxHDS: TRzCheckBox;
    rzChckBxWinda: TRzCheckBox;
    rzChckBxPrzyczepa: TRzCheckBox;
    img1: TImage;
    spltVw1: TSplitView;
    img2: TImage;
    ctgryBtns1: TCategoryButtons;
    procedure FormCreate(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDefinicje: TFrmDefinicje;

implementation

{$R *.dfm}

procedure TFrmDefinicje.ctgryBtns1Categories0Items3Click(Sender: TObject);
begin
Close;
end;

procedure TFrmDefinicje.FormCreate(Sender: TObject);
begin
RzPgCntrl1.ActivePageIndex:=0;
end;

procedure TFrmDefinicje.img1Click(Sender: TObject);
begin
img1.Picture.LoadFromFile('PrawkoPomoc.png');
end;

procedure TFrmDefinicje.img2Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;
end;

end.
