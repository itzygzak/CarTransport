unit Start;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.Menus, Vcl.StdCtrls, RzPanel, Vcl.ExtCtrls, System.IniFiles,
  Vcl.WinXCtrls, Vcl.CategoryButtons, RzPopups, RzLabel;

type
  TFrameClass = class of TFrame;

  TFrmStart = class(TForm)
    stat1: TStatusBar;
    RzPnl1: TRzPanel;
    img1: TImage;
    RzPnl2: TRzPanel;
    spltVw1: TSplitView;
    ctgryBtns1: TCategoryButtons;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzlbl3: TRzLabel;
    tmr1: TTimer;
    rzlbl4: TRzLabel;
    rzlbl5: TRzLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure img1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ctgryBtns1Categories0Items2Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ctgryBtns1Categories0Items1Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items5Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items0Click(Sender: TObject);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrmStart: TFrmStart;
  INI: TIniFile;
  glowna_left, glowna_top, glowna_wys, glowna_szer: Integer;

implementation

uses
  DM, Login, Definicje, Historia, UstalKurs;

{$R *.dfm}

procedure TFrmStart.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TFrmStart.ctgryBtns1Categories0Items0Click(Sender: TObject);
begin
  FrmUstalKurs.Top := FrmStart.Top + 50;
  FrmUstalKurs.Left := FrmStart.Left + 50;
  FrmUstalKurs.ShowModal;

end;

procedure TFrmStart.ctgryBtns1Categories0Items1Click(Sender: TObject);
begin
  FrmHistoria.Top := FrmStart.Top + 50;
  FrmHistoria.Left := FrmStart.Left + 50;
  FrmHistoria.ShowModal;
end;

procedure TFrmStart.ctgryBtns1Categories0Items2Click(Sender: TObject);
begin
  FrmDefinicje.Top := FrmStart.Top + 50;
  FrmDefinicje.Left := FrmStart.Left + 50;
  FrmDefinicje.ShowModal;
end;

procedure TFrmStart.ctgryBtns1Categories0Items5Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmStart.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  FrmStart.Hide;
  FrmLogin.Show;
end;

procedure TFrmStart.FormCreate(Sender: TObject);
var
  data: TDate;
begin
  rzlbl5.Caption := DateToStr(Now);
end;

procedure TFrmStart.FormResize(Sender: TObject);
begin
  if FrmLogin.Width < 240 then
    spltvw1.Close
  else
    spltvw1.Open;
end;

procedure TFrmStart.img1Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;

end;

procedure TFrmStart.tmr1Timer(Sender: TObject);
begin
  rzlbl4.Caption := TimeToStr(Time);
end;

end.

