unit FrameWelcome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel,
  Vcl.ExtCtrls, RzPanel, Vcl.Imaging.jpeg;

type
  TFrameWel = class(TFrame)
    RzPnl1: TRzPanel;
    img1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
