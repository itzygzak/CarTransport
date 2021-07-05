program CarTransp;

uses
  Vcl.Forms,
  Start in 'Start.pas' {FrmStart},
  DM in 'DM.pas' {DataModule1: TDataModule},
  Login in 'Login.pas' {FrmLogin},
  Definicje in 'Definicje.pas' {FrmDefinicje},
  Historia in 'Historia.pas' {FrmHistoria},
  UstalKurs in 'UstalKurs.pas' {FrmUstalKurs},
  Grafik in 'Grafik.pas' {FrmGrafik},
  Ustawienia in 'Ustawienia.pas' {FrmUstawienia},
  PodgladWyd in 'PodgladWyd.pas' {FrmPodgladWydruku},
  carTransport in 'carTransport.pas' {FrmCarTransport};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmStart, FrmStart);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFrmDefinicje, FrmDefinicje);
  Application.CreateForm(TFrmHistoria, FrmHistoria);
  Application.CreateForm(TFrmUstalKurs, FrmUstalKurs);
  Application.CreateForm(TFrmGrafik, FrmGrafik);
  Application.CreateForm(TFrmUstawienia, FrmUstawienia);
  Application.CreateForm(TFrmPodgladWydruku, FrmPodgladWydruku);
  Application.CreateForm(TFrmCarTransport, FrmCarTransport);
  Application.Run;
end.
