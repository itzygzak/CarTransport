unit carTransport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.CategoryButtons, Vcl.WinXCtrls,
  Vcl.ExtCtrls, RzPanel, Vcl.Imaging.pngimage, RzTabs, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzLabel;

type
  TFrmCarTransport = class(TForm)
    RzPnl1: TRzPanel;
    RzPnl2: TRzPanel;
    spltVw1: TSplitView;
    ctgryBtns1: TCategoryButtons;
    img1: TImage;
    RzPgCntrl1: TRzPageControl;
    RzTbshtLicencja: TRzTabSheet;
    RzTbshtOprogramie: TRzTabSheet;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzlbl3: TRzLabel;
    rzlbl4: TRzLabel;
    rzlbl5: TRzLabel;
    rzlbl6: TRzLabel;
    rzlbl7: TRzLabel;
    rzlbl8: TRzLabel;
    rzlbl9: TRzLabel;
    rzlbl10: TRzLabel;
    rzlbl11: TRzLabel;
    rzEdtNazwa: TRzEdit;
    rzEdtUlica: TRzEdit;
    rzEdtKod: TRzEdit;
    rzEdtMiejsc: TRzEdit;
    rzEdtNip: TRzEdit;
    rzEdtTel1: TRzEdit;
    rzEdtTel2: TRzEdit;
    rzEdtEmail: TRzEdit;
    rzEdtStrona: TRzEdit;
    rzEdtKlucz: TRzEdit;
    rzEdtDataRej: TRzEdit;
    rzMmo1: TRzMemo;
    RzTbshtTabSheet1: TRzTabSheet;
    rzlbl12: TRzLabel;
    rzlbl13: TRzLabel;
    rzlbl14: TRzLabel;
    rzlbl15: TRzLabel;
    rzlbl16: TRzLabel;
    rzlbl17: TRzLabel;
    img2: TImage;
    rzlblNazwa: TRzLabel;
    rzlbl18: TRzLabel;
    rzlbl19: TRzLabel;
    rzlbl20: TRzLabel;
    procedure FormShow(Sender: TObject);
    procedure ctgryBtns1Categories0Items2Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items1Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items0Click(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RzTbshtTabSheet1Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCarTransport: TFrmCarTransport;

implementation
uses DM, Login;

{$R *.dfm}

procedure TFrmCarTransport.ctgryBtns1Categories0Items0Click(Sender: TObject);
begin
RzPgCntrl1.ActivePageIndex:=0;
end;

procedure TFrmCarTransport.ctgryBtns1Categories0Items1Click(Sender: TObject);
begin
RzPgCntrl1.ActivePageIndex:=1;
end;


procedure TFrmCarTransport.ctgryBtns1Categories0Items2Click(Sender: TObject);
begin
RzPgCntrl1.ActivePageIndex:=2;
end;


procedure TFrmCarTransport.ctgryBtns1Categories0Items3Click(Sender: TObject);
begin
Close;
end;

procedure TFrmCarTransport.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case Key of
    VK_F12:
      ctgryBtns1.Categories[0].Items[4].OnClick(Sender);
 end;
end;

procedure TFrmCarTransport.FormShow(Sender: TObject);
begin
begin
    with DataModule1.ibQryTemp, SQL do
    begin
      Close;
      Clear;
      Add('SELECT nazwa,ulica,kod_pocztowy,miejscowosc,nip,tel_1,tel_2,email,strona_www, klucz_lic FROM firma ');
      Add('WHERE id_firma =:id_firma ');
      ParamByName('id_firma').AsInteger := 1;
      Open;
    end;
  end;
  rzEdtNAZWA.Text := DataModule1.ibQryTemp.FieldByName('NAZWA').AsString;
  rzEdtULICA.Text := DataModule1.ibQryTemp.FieldByName('ULICA').AsString;
  rzEdtKod.Text := DataModule1.ibQryTemp.FieldByName('KOD_POCZTOWY').AsString;
  rzEdtMiejsc.Text := DataModule1.ibQryTemp.FieldByName('MIEJSCOWOSC').AsString;
  rzEdtNip.Text := DataModule1.ibQryTemp.FieldByName('NIP').AsString;
  rzEdtTel1.Text := DataModule1.ibQryTemp.FieldByName('TEL_1').AsString;
  rzEdtTel2.Text := DataModule1.ibQryTemp.FieldByName('TEL_2').AsString;
  rzEdtEmail.Text := DataModule1.ibQryTemp.FieldByName('EMAIL').AsString;
  rzEdtStrona.Text := DataModule1.ibQryTemp.FieldByName('STRONA_WWW').AsString;
  rzEdtKlucz.Text := DataModule1.ibQryTemp.FieldByName('KLUCZ_LIC').AsString;
end;

procedure TFrmCarTransport.img1Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;

end;

procedure TFrmCarTransport.RzTbshtTabSheet1Show(Sender: TObject);
begin
  rzlbl18.Caption := FrmLogin.smVrsnf1.FileVersion;
  rzlbl19.Caption := DateToStr(FrmLogin.smVrsnf1.DateTime);
  rzlbl20.Caption := FrmLogin.smVrsnf1.CompanyName;
//  NazwaKomp := GetComupterNameStr;
end;

end.
