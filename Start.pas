unit Start;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ChromeTabs,
  ChromeTabsClasses, ChromeTabsTypes, Vcl.ComCtrls, Vcl.Menus, Vcl.StdCtrls,
  RzPanel, Vcl.ExtCtrls, System.IniFiles;

type
  TFrameClass = class of TFrame;

  TFrmStart = class(TForm)
    stat1: TStatusBar;
    pm1: TPopupMenu;
    Koniecpracy1: TMenuItem;
    N1: TMenuItem;
    Oprogramie1: TMenuItem;
    RzPnl2: TRzPanel;
    rzGrpBox1: TRzGroupBox;
    btnWitaj: TButton;
    btnKoniec: TButton;
    btnHistoria: TButton;
    btnDefiniuj: TButton;
    btnKurs: TButton;
    RzPnl1: TRzPanel;
    chrmTbs1: TChromeTabs;
    procedure FormCreate(Sender: TObject);
    procedure Koniecpracy1Click(Sender: TObject);
    procedure btnKoniecClick(Sender: TObject);
    procedure chrmtbs1Click(Sender: TObject);
    procedure btnWitajClick(Sender: TObject);
    procedure chrmTbs1Change(Sender: TObject; ATab: TChromeTab; TabChangeType: TTabChangeType);
    procedure chrmTbs1ButtonCloseTabClick(Sender: TObject; ATab: TChromeTab; var Close: Boolean);
    procedure btnHistoriaClick(Sender: TObject);
    procedure btnKursClick(Sender: TObject);
    procedure btnDefiniujClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HideAllChildFrames(Sender: TObject);
  private
    { Private declarations }
    function OpenFrameAsChromeTab(FrameClass: TFrameClass; const TabCaption: string): TChromeTab;
  public
    { Public declarations }
  end;

var
  FrmStart: TFrmStart;
  INI: TIniFile;
  glowna_left, glowna_top, glowna_wys, glowna_szer: Integer;

implementation

uses
  DM, FrameWelcome, FrameKurs, FrameHistory, FrameDefiniujUnit3;

{$R *.dfm}



function TFrmStart.OpenFrameAsChromeTab(FrameClass: TFrameClass;
  const TabCaption: string): TChromeTab;
var
  frm: TFrame;
  tab: TChromeTab;
begin
  RzPnl1.HideAllChildFrames();
  frm := FrameClass.Create(RzPnl1);
  frm.Parent := RzPnl1;
  frm.Visible := True;
  frm.Align := alClient;
  tab := chrmTbs1.Tabs.Add;
  tab.Data := frm;
  tab.Caption := TabCaption;
  Result := tab;
end;


procedure TFrmStart.btnWitajClick(Sender: TObject);
var
  TabCaption: string;
begin
  TabCaption := (Sender as TButton).Caption;
  OpenFrameAsChromeTab(TFrameWel, TabCaption);
end;

procedure TFrmStart.btnDefiniujClick(Sender: TObject);
var
  TabCaption: string;
begin
  TabCaption := (Sender as TButton).Caption;
  OpenFrameAsChromeTab(TFrameDef, TabCaption);
end;

procedure TFrmStart.btnHistoriaClick(Sender: TObject);
var
  TabCaption: string;
begin
  TabCaption := (Sender as TButton).Caption;
  OpenFrameAsChromeTab(TFrameHis, TabCaption);
end;

procedure TFrmStart.btnKoniecClick(Sender: TObject);
begin
  begin
    INI := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'carTransport.ini');
    try
      INI.WriteInteger('PolozenieGlow', 'Left', FrmStart.Left);
      INI.WriteInteger('PolozenieGlow', 'Top', FrmStart.Top);
      INI.WriteInteger('PolozenieGlow', 'Height', FrmStart.Height);
      INI.WriteInteger('PolozenieGlow', 'Width', FrmStart.Width);
    finally
      INI.Free;
    end;
    Application.Terminate
  end;
end;

procedure TFrmStart.btnKursClick(Sender: TObject);
var
  TabCaption: string;
begin
  TabCaption := (Sender as TButton).Caption;
  OpenFrameAsChromeTab(TFrameKur, TabCaption);
end;

procedure TFrmStart.chrmTbs1ButtonCloseTabClick(Sender: TObject; ATab: TChromeTab; var Close: Boolean);
var
  obj: TObject;
begin
  obj := TObject(ATab.Data);
  (obj as TFrame).Free;
end;

procedure TFrmStart.chrmTbs1Change(Sender: TObject; ATab: TChromeTab; TabChangeType: TTabChangeType);
var
  obj: TObject;
begin
  if Assigned(ATab) then
  begin
    obj := TObject(ATab.Data);
    if (TabChangeType = tcActivated) and Assigned(obj) then
    begin
     // RzPnl1.HideAllChildFrames();
      (obj as TFrame).Visible := True;
    end;
  end;
end;

procedure TFrmStart.chrmtbs1Click(Sender: TObject);
begin
//chrmtbs1.ActiveTabIndex:=0;
end;

procedure TFrmStart.FormCreate(Sender: TObject);
begin
  INI := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'carTransport.ini');
  try
    glowna_left := INI.ReadInteger('PolozenieGlow', 'Left', 120);
    glowna_top := INI.ReadInteger('PolozenieGlow', 'Top', 120);
    glowna_wys := INI.ReadInteger('PolozenieGlow', 'Height', 435);
    glowna_szer := INI.ReadInteger('PolozenieGlow', 'Width', 850);
  finally
    INI.Free;
  end;

end;

procedure TFrmStart.FormShow(Sender: TObject);
begin
  FrmStart.Left := glowna_left;
  FrmStart.Top := glowna_top;
  FrmStart.Height := glowna_wys;
  FrmStart.Width := glowna_szer;
end;

procedure TFrmStart.Koniecpracy1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmStart.HideAllChildFrames(Sender: TObject);
var
  i: Integer;
begin
  for i := self.ControlCount - 1 downto 0 do
    if self.Controls[i] is TFrame then
      (self.Controls[i] as TFrame).Visible := False;
end;


end.

