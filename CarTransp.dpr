program CarTransp;

uses
  Vcl.Forms,
  Start in 'Start.pas' {FrmStart},
  DM in 'DM.pas' {DataModule1: TDataModule},
  Login in 'Login.pas' {FrmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmStart, FrmStart);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
