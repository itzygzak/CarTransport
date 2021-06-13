unit FrameZap;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.CategoryButtons,
  Vcl.ExtCtrls, Vcl.WinXCtrls;

type
  TFrameZapisz = class(TFrame)
    spltVw1: TSplitView;
    ctgryBtns1: TCategoryButtons;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
