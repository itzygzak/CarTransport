unit Start;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ChromeTabs, Vcl.ComCtrls, Vcl.Menus,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    stat1: TStatusBar;
    chrmtbs1: TChromeTabs;
    pm1: TPopupMenu;
    Koniecpracy1: TMenuItem;
    N1: TMenuItem;
    Oprogramie1: TMenuItem;
    btn1: TButton;
    btn2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Koniecpracy1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses DM;

{$R *.dfm}

procedure TForm1.btn2Click(Sender: TObject);
begin
Application.Terminate
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
chrmtbs1.ActiveTabIndex:=0;
end;

procedure TForm1.Koniecpracy1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
