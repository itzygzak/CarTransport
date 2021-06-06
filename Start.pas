unit Start;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.Menus, Vcl.StdCtrls,
  RzPanel, Vcl.ExtCtrls, System.IniFiles;

type
  TFrameClass = class of TFrame;


  TFrmStart = class(TForm)
    stat1: TStatusBar;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

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
  DM, Login;

{$R *.dfm}

procedure TFrmStart.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;



procedure TFrmStart.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
FrmStart.Hide;
FrmLogin.Show;
end;

end.

