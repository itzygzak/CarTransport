unit DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, IBX.IBSQL,
  IBX.IBDatabase, IBX.IBCustomDataSet, IBX.IBQuery, Datasnap.DBClient;

type
  TDataModule1 = class(TDataModule)
    dsUzyt: TDataSource;
    ibDtBase1: TIBDatabase;
    ibTransUzyt: TIBTransaction;
    ibQryUzyt: TIBQuery;
    ibQryKier: TIBQuery;
    ibTransKier: TIBTransaction;
    dsKier: TClientDataSet;
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
