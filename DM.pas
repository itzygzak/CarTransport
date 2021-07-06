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
    ibQryTemp: TIBQuery;
    ibTransTemp: TIBTransaction;
    dsTemp: TDataSource;
    ibQryHistoria: TIBQuery;
    ibTransHistoria: TIBTransaction;
    dsHistoria: TDataSource;
    ibQryMsc: TIBQuery;
    ibTransMsc: TIBTransaction;
    dsMsc: TDataSource;
    ibQryPojazdy: TIBQuery;
    dsKier: TDataSource;
    ibTransPojazdy: TIBTransaction;
    dsPojazdy: TDataSource;
    ibQryGrafik: TIBQuery;
    ibTransGrafik: TIBTransaction;
    dsGrafik: TDataSource;
    ibQryFirma: TIBQuery;
    ibTransFirma: TIBTransaction;
    dsFirma: TDataSource;
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
