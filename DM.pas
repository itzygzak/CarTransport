unit DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, IBX.IBSQL,
  IBX.IBDatabase;

type
  TDataModule1 = class(TDataModule)
    ibDtbs1: TIBDatabase;
    ibTrnsctn1: TIBTransaction;
    ibSQL2: TIBSQL;
    ds1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
