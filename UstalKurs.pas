unit UstalKurs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.WinXCtrls, Vcl.ExtCtrls, RzPanel, FrameZap, Vcl.CategoryButtons,
  Vcl.StdCtrls, RzLabel, RzButton, Vcl.Mask, RzEdit, Vcl.ComCtrls, RzDTP,
  RzCmboBx;

type
  TFrmUstalKurs = class(TForm)
    RzPnl1: TRzPanel;
    RzPnl2: TRzPanel;
    img1: TImage;
    spltVw1: TSplitView;
    ctgryBtns1: TCategoryButtons;
    rzBtnUstal: TRzButton;
    rzGrpBox1: TRzGroupBox;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzDtmPckrData: TRzDateTimePicker;
    rzEdtTime: TRzMaskEdit;
    tmr1: TTimer;
    rzGrpBox2: TRzGroupBox;
    rzlbl4: TRzLabel;
    rzCmbxWgDokum: TRzComboBox;
    rzGrpBox3: TRzGroupBox;
    rzlbl5: TRzLabel;
    rzlbl6: TRzLabel;
    rzGrpBox4: TRzGroupBox;
    rzlbl8: TRzLabel;
    rzlbl9: TRzLabel;
    rzlbl10: TRzLabel;
    rzlbl11: TRzLabel;
    rzlbl12: TRzLabel;
    rzCmbxKierowca: TRzComboBox;
    rzCmbxPojazd: TRzComboBox;
    rzCmbxMiejsc: TRzComboBox;
    rzCmbxKod: TRzComboBox;
    rzCmbxUlica: TRzComboBox;
    rzCmbxGmina: TRzComboBox;
    rzCmbxPowiat: TRzComboBox;
    procedure img1Click(Sender: TObject);
    procedure rzBtnUstalClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUstalKurs: TFrmUstalKurs;

implementation

//uses
//  FrameZap;

{$R *.dfm}

procedure TFrmUstalKurs.ctgryBtns1Categories0Items3Click(Sender: TObject);
begin
Close;
end;

procedure TFrmUstalKurs.FormCreate(Sender: TObject);
var
  data: TDate;
begin
  rzDtmPckrData.Date := Now;
end;

procedure TFrmUstalKurs.img1Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;

end;

procedure TFrmUstalKurs.rzBtnUstalClick(Sender: TObject);
begin
  Application.MessageBox('Zosta³y ustalone parametry wysy³ki. ' + #13#10 + 'Je¿eli podane parametry s¹ prawid³owe, zapisz dane i ' + #13#10 + 'wydrukuj list przewozowy.', 'Application.Title', MB_OK + MB_ICONINFORMATION);

end;

procedure TFrmUstalKurs.tmr1Timer(Sender: TObject);
begin
  rzEdtTime.Text := TimeToStr(Time);
end;

end.

