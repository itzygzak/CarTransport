unit PodgladWyd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxPreview, Vcl.ExtCtrls,
  RzPanel;

type
  TFrmPodgladWydruku = class(TForm)
    RzPnl1: TRzPanel;
    frxPrvw1: TfrxPreview;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPodgladWydruku: TFrmPodgladWydruku;

implementation
uses Grafik;

{$R *.dfm}

procedure TFrmPodgladWydruku.FormShow(Sender: TObject);
begin
FrmGrafik.frXrprt1.ShowReport();
end;

end.
