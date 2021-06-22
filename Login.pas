unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.WinXCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage, System.ImageList,
  Vcl.ImgList, Vcl.CategoryButtons, System.IniFiles, Vcl.StdCtrls, RzLabel,
  RzPanel;

type
  TFrmLogin = class(TForm)
    pnl1: TPanel;
    spltvw1: TSplitView;
    img1: TImage;
    rzpnl1: TRzPanel;
    btnKoniec: TButton;
    btnLogin: TButton;
    edtHaslo: TEdit;
    edtLogin: TEdit;
    chk1: TCheckBox;
    lnkLbl1: TLinkLabel;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzlbl3: TRzLabel;
    rzlbl4: TRzLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnKoniecClick(Sender: TObject);
    procedure img1Click(Sender: TObject);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  private
    { Private declarations }
  public
    IDUzyt: Integer;
    NazwaKomp: string;
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;
  INI: TINIFile;
  PamLog: Boolean; //zapisuje do ini czy pami�ta� nazwe usera
  Zm_stanowisko: string;
  NazwaLogin: string;

implementation

uses
  DM, Start;

{$R *.dfm}

procedure TFrmLogin.btnKoniecClick(Sender: TObject);
begin
  if Application.MessageBox('Rezygnujesz z logowania ? Oznacza to koniec pracy.', 'Koniec pracy', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    INI := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'carTransport.ini');
    try
      INI.WriteInteger('PolozenieGlow', 'Left', FrmStart.Left);
      INI.WriteInteger('PolozenieGlow', 'Top', FrmStart.Top);
      INI.WriteInteger('PolozenieGlow', 'Height', FrmStart.Height);
      INI.WriteInteger('PolozenieGlow', 'Width', FrmStart.Width);
    finally
      INI.Free;
    end;
    Application.Terminate;
  end;

end;

procedure TFrmLogin.btnLoginClick(Sender: TObject);
begin
  INI := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'carTransport.ini');         //do odczytu po��czenie z pliku INI
  try
    DataModule1.ibDtBase1.DatabaseName := INI.ReadString('Baza', 'Path', '');
  finally
    INI.Free;
  end;
  if DataModule1.ibDtBase1.Connected = False then
    DataModule1.ibDtBase1.Connected := True;   //polacz z baza

  with DataModule1.ibQryUzyt, SQL do
  begin
    Close;
    Clear;

    Add('SELECT id_uzyt, login, haslo, imie, nazwisko, stanowisko,aktywny,usun FROM uzyt ');
    Add('WHERE login =:login AND haslo =:haslo AND aktywny =:aktywny and usun =:usun');
    ParamByName('login').AsString := edtLogin.Text;
    ParamByName('haslo').AsString := edtHaslo.Text;
    ParamByName('Aktywny').AsInteger := 1;
    ParamByName('Usun').AsInteger := 0;
    Open;

    if DataModule1.ibQryUzyt.FieldByName('Login').AsString = EdtLogin.Text then      //gdy nazwa z pola login w bazie = tesktowi w edtlogin
    begin
      IDUzyt := DataModule1.ibQryUzyt.FieldByName('ID_UZYT').AsInteger;
      if PamLog then
      begin
        INI := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'carTransport.ini');
        try
          INI.WriteString('Ustawienia', 'NazwaInstr', EdtLogin.Text);
        finally
          INI.Free;
        end;
      end;

     //wstawiam dane do statusbar na glownej
      FrmStart.stat1.Panels[0].Text := Trim(DataModule1.ibQryUzyt.FieldByName('Imie').AsString + ' ' + DataModule1.ibQryUzyt.FieldByName('Nazwisko').AsString);
      FrmStart.stat1.Panels[1].Text := DataModule1.ibQryUzyt.FieldByName('Login').AsString;
      Zm_stanowisko := DataModule1.ibQryUzyt.FieldByName('Stanowisko').AsString; //przypisanie do zmiennej zm_stanowisko wartosci pola stanowisko
      FrmStart.stat1.Panels[2].Text := Zm_stanowisko;
    //uruchamia po poprawnum zalaogowaniu glowna forme
      FrmStart.Left := glowna_left;
      FrmStart.Top := glowna_top;
      FrmStart.Height := glowna_wys;
      FrmStart.Width := glowna_szer;
      FrmStart.Show;
      FrmLogin.Hide;
    end
    else
    begin
      if PamLog then                     //w przeciwnym razie
      begin
        EdtHaslo.Text := '';
        EdtHaslo.SetFocus;
      end
      else
      begin
        EdtLogin.Text := '';
        EdtHaslo.Text := '';
        EdtLogin.SetFocus;
      end;
    end;

  end;

end;

procedure TFrmLogin.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  INI := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'carTransport.ini');
  try
    PamLog := INI.ReadBool('Ustawienia', 'PamLogin', False);
    NazwaLogin := INI.ReadString('Ustawienia', 'NazwaUzyt', '');
    glowna_left := INI.ReadInteger('PolozenieGlow', 'Left', 120);
    glowna_top := INI.ReadInteger('PolozenieGlow', 'Top', 120);
    glowna_wys := INI.ReadInteger('PolozenieGlow', 'Height', 435);
    glowna_szer := INI.ReadInteger('PolozenieGlow', 'Width', 850);
  finally
    INI.Free;
  end;
end;

procedure TFrmLogin.img1Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;

end;

end.

