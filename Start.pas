unit Start;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ChromeTabs, ChromeTabsClasses, ChromeTabsTypes, Vcl.ComCtrls, Vcl.Menus,
  Vcl.StdCtrls, RzPanel, Vcl.ExtCtrls;

type
   TFrameClass = class of TFrame;

  TFrmStart = class(TForm)
    stat1: TStatusBar;
    pm1: TPopupMenu;
    Koniecpracy1: TMenuItem;
    N1: TMenuItem;
    Oprogramie1: TMenuItem;
    RzPnl1: TRzPanel;
    chrmTbs1: TChromeTabs;
    RzPnl2: TRzPanel;
    rzGrpBox1: TRzGroupBox;
    btnWitaj: TButton;
    btnKoniec: TButton;
    btnHistoria: TButton;
    btnDefiniuj: TButton;
    btnKurs: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Koniecpracy1Click(Sender: TObject);
    procedure btnKoniecClick(Sender: TObject);
    procedure chrmtbs1Click(Sender: TObject);
    procedure btnWitajClick(Sender: TObject);
    procedure chrmTbs1Change(Sender: TObject; ATab: TChromeTab;
     TabChangeType: TTabChangeType);
    procedure chrmTbs1ButtonCloseTabClick(Sender: TObject; ATab: TChromeTab;
      var Close: Boolean);
    procedure btnHistoriaClick(Sender: TObject);
  private
    { Private declarations }
        function OpenFrameAsChromeTab(FrameClass: TFrameClass;
      const TabCaption: String): TChromeTab;
  public
    { Public declarations }
  end;

var
  FrmStart: TFrmStart;

implementation
uses DM, FrameWelcome;

{$R *.dfm}

function TFrmStart.OpenFrameAsChromeTab(FrameClass: TFrameClass;
  const TabCaption: String): TChromeTab;
var
  frm: TFrame;
  tab: TChromeTab;
begin
  //RzPnl1.HideAllChildFrames();
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
  TabCaption: String;
begin
  TabCaption := (Sender as TButton).Caption;
  OpenFrameAsChromeTab(TFrameWel, TabCaption);
end;

procedure TFrmStart.btnHistoriaClick(Sender: TObject);
var
  TabCaption: String;
begin
  TabCaption := (Sender as TButton).Caption;
  OpenFrameAsChromeTab(TFrameWel, TabCaption);
end;

procedure TFrmStart.btnKoniecClick(Sender: TObject);
begin
Application.Terminate
end;


procedure TFrmStart.chrmTbs1ButtonCloseTabClick(Sender: TObject;
  ATab: TChromeTab; var Close: Boolean);
var
  obj: TObject;
begin
  obj := TObject(ATab.Data);
  (obj as TFrame).Free;
end;


procedure TFrmStart.chrmTbs1Change(Sender: TObject; ATab: TChromeTab;
  TabChangeType: TTabChangeType);
var obj: TObject;
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
var
  sProjFileName: string;
  ext: string;
begin
  RzPnl1.Caption := '';
//  RzPnl1.Align := alClient;
end;


procedure TFrmStart.Koniecpracy1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
