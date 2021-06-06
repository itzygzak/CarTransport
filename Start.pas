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
  DM;

{$R *.dfm}






end.

