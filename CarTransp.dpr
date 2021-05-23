program CarTransp;

uses
  Vcl.Forms,
  Start in 'Start.pas' {FrmStart},
  DM in 'DM.pas' {DataModule1: TDataModule},
  FrameWelcome in 'FrameWelcome.pas' {FrameWel: TFrame},
  FrameHistory in 'FrameHistory.pas' {FrameHis: TFrame},
  FrameKurs in 'FrameKurs.pas' {FrameKur: TFrame},
  FrameDefiniujUnit3 in 'FrameDefiniujUnit3.pas' {FrameDef: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmStart, FrmStart);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
