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
    rzlbl10: TRzLabel;
    cbbPrawko: TComboBox;
    edtImie: TEdit;
    edtDrugieImie: TEdit;
    edtNazwisko: TEdit;
    edtMarka: TEdit;
    edtTyp: TEdit;
    edtLadownosc: TEdit;
    rzlbl11: TRzLabel;
    rzlbl12: TRzLabel;
    rgHds: TRadioGroup;
    rgPrzyczepa: TRadioGroup;
    rgWinda: TRadioGroup;
    lbl1: TLabel;
    edtKod: TEdit;
    edtMiejscowosc: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
