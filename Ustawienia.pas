unit Ustawienia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.WinXCtrls, Vcl.ExtCtrls, RzPanel, Vcl.Imaging.pngimage, RzTabs,
  Vcl.CategoryButtons, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzLabel, RzCmboBx,
  Data.DB, Vcl.Grids, Vcl.DBGrids, RzDBGrid, SMDBGrid;

type
  TFrmUstawienia = class(TForm)
    rzpnl1: TRzPanel;
    spltVw1: TSplitView;
    rzpnl2: TRzPanel;
    img1: TImage;
    rzPgCntrl1: TRzPageControl;
    rztbshtTabSheet1: TRzTabSheet;
    rztbshtTabSheet2: TRzTabSheet;
    rztbshtTabSheet3: TRzTabSheet;
    ctgryBtns1: TCategoryButtons;
    rzGrpBx1: TRzGroupBox;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzlbl3: TRzLabel;
    rzlbl4: TRzLabel;
    rzlbl5: TRzLabel;
    rzlbl6: TRzLabel;
    rzlbl7: TRzLabel;
    rzEdtLogin: TRzEdit;
    rzEdtHaslo: TRzEdit;
    rzEdtImie: TRzEdit;
    rzEdtDrugieImie: TRzEdit;
    rzEdtNazwisko: TRzEdit;
    rzEdtTelefon: TRzEdit;
    rzCmBx1: TRzComboBox;
    rzGrpBx2: TRzGroupBox;
    rzEdtSzukaj: TRzEdit;
    rzpnl3: TRzPanel;
    rzlbl8: TRzLabel;
    img2: TImage;
    rzMmo1: TRzMemo;
    SMDBgrdKto: TSMDBGrid;
    SMDBgrdUzyt: TSMDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure ctgryBtns1Categories0Items0Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure rztbshtTabSheet2Show(Sender: TObject);
    procedure ctgryBtns1Categories0Items1Click(Sender: TObject);
    procedure DodajUsera;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rzMmo1Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure rzEdtSzukajChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmUstawienia: TFrmUstawienia;

implementation

uses
  DM, Login;


{$R *.dfm}

procedure TFrmUstawienia.ctgryBtns1Categories0Items0Click(Sender: TObject);
begin
  if rzPgCntrl1.ActivePageIndex = 0 then
    DodajUsera
  else
    ShowMessage('Ne tej zak³adce nie jest mo¿liwy zapis');
end;

procedure TFrmUstawienia.DodajUsera;
var
  generator: Integer;  //potrzebna do ustawienia siê na nowym rekordzie
  historia: string;   //potrzebna do zapisu historia

begin
  try
    with DataModule1.ibQryTemp, SQL do          //dodanie nowego instruktora
    begin
      Close;
      Clear;
      Add('INSERT INTO uzyt (login, haslo, Imie, Drugie_imie, Nazwisko, Nr_Telefonu, Stanowisko)');
      Add('VALUES (:login, :haslo, :Imie, :Drugie_imie, :Nazwisko, :Nr_Telefonu, :Stanowisko)');
      ParamByName('Login').AsString := Trim(rzEdtLogin.Text);
      ParamByName('Haslo').AsString := Trim(rzEdtHaslo.Text);
      ParamByName('Imie').AsString := Trim(rzEdtImie.Text);
      ParamByName('Drugie_imie').AsString := Trim(rzEdtDrugieImie.Text);
      ParamByName('Nazwisko').AsString := Trim(rzEdtNazwisko.Text);
      ParamByName('Nr_Telefonu').AsString := Trim(rzEdtTelefon.Text);
      ParamByName('Stanowisko').AsString := rzCmBx1.Text;
      ExecSQL;
      DataModule1.ibTransTemp.Commit;
    end;

    with DataModule1.ibQryTemp, SQL do                    //po dodaniu w oknie wczesniejszym ustawiamy sie na nowym instruktorze
    begin
      Clear;
      Add('SELECT gen_id (gen_uzyt_id, 0) FROM rdb$database ');
      Open;
      generator := FieldByName('gen_id').AsInteger;
    end;

  except
    DataModule1.ibTransTemp.Rollback;
    ShowMessage('B³¹d nie uda³o siê utworzyæ nowego u¿ytkownika ');
  end;



        //startuje historia
  try     //do zm. historia przypisuje legende + zawartosc editow
    historia := ' Utworzenie nowego uzytkownika ' + #13#10;
    historia := historia + ' Login: ' + rzEdtlogin.Text + #13#10;
    historia := historia + ' Has³o zosta³o utworzone ' + #13#10;
    historia := historia + ' Imiê: ' + rzEdtImie.Text + #13#10;
    historia := historia + ' Nazwisko: ' + rzEdtNazwisko.Text + #13#10;
    historia := historia + ' Stanowisko: ' + rzCmBx1.Text + #13#10;

    with DataModule1.ibQryHistoria, SQL do
    begin
      Close;
      Clear;
      Add('INSERT INTO historia (panel, id_uzyt, rekord, operacja, stanowisko_k) VALUES (:panel, :id_uzyt, :rekord, :operacja, :stanowisko_k)');
      ParamByName('panel').AsInteger := 1;     // nr 1 panelu - dotyczy operacji na uzytkowniku
      ParamByName('id_uzyt').AsInteger := FrmLogin.IdUzyt;
      ParamByName('rekord').AsInteger := generator;
      ParamByName('operacja').AsString := historia;
      ParamByName('stanowisko_k').AsString := FrmLogin.NazwaKomp;
      ExecSQL;
      DataModule1.ibTransHistoria.Commit;
    end;
  except
    DataModule1.ibTransHistoria.Rollback;
    ShowMessage('B³¹d! Nie dodano wpisu w historii. SprawdŸ dane!');
  end;
  rzEdtLogin.Text := '';
  rzEdtHaslo.Text := '';
  rzEdtImie.Text := '';
  rzEdtDrugieImie.Text := '';
  rzEdtNazwisko.Text := '';
  rzEdtTelefon.Text := '';
  rzCmBx1.ItemIndex := -1;

end;

procedure TFrmUstawienia.ctgryBtns1Categories0Items1Click(Sender: TObject);
begin
  case Application.MessageBox('Je¿eli anulujesz, okno zostanie zamkniête, ' + #13#10 + '¿adne zmiany nie zostan¹ zapisane.', 'Caption', MB_YESNO + MB_ICONWARNING) of
    IDYES:
      begin
        Close;
      end;
    IDNO:
      begin
        rzEdtLogin.SetFocus;
      end;
  end;
end;

procedure TFrmUstawienia.ctgryBtns1Categories0Items3Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmUstawienia.FormCreate(Sender: TObject);
begin
  rzPgCntrl1.ActivePageIndex := 0;
end;

procedure TFrmUstawienia.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F9:
      ctgryBtns1.Categories[0].Items[0].OnClick(Sender);
    VK_F3:
      ctgryBtns1.Categories[0].Items[1].OnClick(Sender);
    VK_F12:
      ctgryBtns1.Categories[0].Items[3].OnClick(Sender);

  end;
end;

procedure TFrmUstawienia.FormShow(Sender: TObject);
begin
  rzEdtLogin.Text := '';
  rzEdtHaslo.Text := '';
  rzEdtImie.Text := '';
  rzEdtDrugieImie.Text := '';
  rzEdtNazwisko.Text := '';
  rzEdtTelefon.Text := '';
  rzCmBx1.ItemIndex := -1;
end;

procedure TFrmUstawienia.img1Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;

end;

procedure TFrmUstawienia.img2Click(Sender: TObject);
begin
  rzMmo1.Visible := True;
end;

procedure TFrmUstawienia.rzEdtSzukajChange(Sender: TObject);
var
  SzukUser: string;
begin
  SzukUser := rzEdtSzukaj.Text;
  with DataModule1.ibQryUzyt, SQL do
  begin
    Close;
    Clear;
    Add('SELECT login, imie, drugie_imie, nazwisko, nr_telefonu, stanowisko FROM uzyt ');
    Add('WHERE usun=:usun');
    if rzEdtSzukaj.Text <> '' then
      Add('AND (UPPER(imie) LIKE :i or UPPER(nazwisko) LIKE :i)');
    ParamByName('usun').AsInteger := 0;
    if rzEdtSzukaj.Text <> '' then
      ParamByName('i').AsString := '%' + UpperCase(SzukUser) + '%';
    Open;
  end;
end;

procedure TFrmUstawienia.rzMmo1Click(Sender: TObject);
begin
  rzMmo1.Visible := False;
end;

procedure TFrmUstawienia.rztbshtTabSheet2Show(Sender: TObject);
begin
  with DataModule1.ibQryUzyt, SQL do
  begin
    Close;
    Clear;
    Add('SELECT login, imie, drugie_imie, nazwisko,nr_telefonu,stanowisko FROM uzyt');
    Add('WHERE stanowisko <>:stanowisko AND usun =:usun ORDER BY nazwisko');
    ParamByName('stanowisko').AsString := 'Administrator';
    ParamByName('usun').AsInteger := 0;
    Open;
  end;

//Wy³¹czenie klaw.zapisz
//ctgryBtns1.Categories[0].Items[0]. //   .Items[0].CategoryButtons

end;

end.

