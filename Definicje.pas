unit Definicje;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, RzPanel,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzLabel, RzCmboBx, RzButton, RzRadChk;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDefinicje: TFrmDefinicje;

implementation

{$R *.dfm}

end.
