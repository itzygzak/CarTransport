unit Ustawienia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.ExtCtrls, RzPanel,
  Vcl.Imaging.pngimage, RzTabs, Vcl.CategoryButtons, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzLabel, RzCmboBx, Data.DB, Vcl.Grids, Vcl.DBGrids, RzDBGrid;

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
    rzDbGrd1: TRzDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure ctgryBtns1Categories0Items0Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmUstawienia: TFrmUstawienia;

implementation
uses DM,Login;


{$R *.dfm}

procedure TFrmUstawienia.ctgryBtns1Categories0Items0Click(Sender: TObject);
 var
  generator: Integer;  //potrzebna do ustawienia si� na nowym rekordzie
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
    ShowMessage('B��d nie uda�o si� utworzy� nowego u�ytkownika ');
  end;



        //startuje historia
    try     //do zm. historia przypisuje legende + zawartosc editow
      historia := ' Utworzenie nowego uzytkownika ' + #13#10;
      historia := historia + ' Login: ' + rzEdtlogin.Text + #13#10;
      historia := historia + ' Has�o zosta�o utworzone ' + #13#10;
      historia := historia + ' Imi�: ' + rzEdtImie.Text + #13#10;
      historia := historia + ' Nazwisko: ' + rzEdtNazwisko.Text + #13#10;
      historia := historia + ' Stanowisko: ' + rzCmBx1.Text + #13#10;

      with DataModule1.ibQryHistoria, SQL do
      begin
        Close;
        Clear;
        Add('INSERT INTO historia (panel, id_uzyt, rekord, operacja, stanowisko_k) VALUES (:panel, :id_uzyt, :rekord, :operacja, :stanowisko_k)');
        ParamByName('panel').AsInteger := 1;     // nr 1 panelu - dotyczy operacji na uzytkowniku
        ParamByName('id_uzyt').AsInteger := FrmLogin.Iduzyt;
        ParamByName('rekord').AsInteger := generator;
        ParamByName('operacja').AsString := historia;
        ParamByName('stanowisko_k').AsString := FrmLogin.NazwaKomp;
        ExecSQL;
        DataModule1.ibTransHistoria.Commit;
      end;
    except
      DataModule1.ibTransHistoria.Rollback;
      ShowMessage('B��d! Nie dodano wpisu w historii. Sprawd� dane!');
    end;
end;
    //koniec historia


procedure TFrmUstawienia.ctgryBtns1Categories0Items3Click(Sender: TObject);
begin
Close;
end;

procedure TFrmUstawienia.FormCreate(Sender: TObject);
begin
rzPgCntrl1.ActivePageIndex:=0;
end;

end.