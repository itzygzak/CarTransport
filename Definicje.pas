unit Definicje;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls, RzPanel,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzLabel, RzCmboBx, RzButton, RzRadChk,
  Vcl.Imaging.pngimage, Vcl.WinXCtrls, Vcl.CategoryButtons;

type
  TFrmDefinicje = class(TForm)
    RzPnl1: TRzPanel;
    RzPnl2: TRzPanel;
    RzPgCntrl1: TRzPageControl;
    RzTbshtKierowcy: TRzTabSheet;
    RzTbshtPojazdy: TRzTabSheet;
    RzTbshtMiejscowoœci: TRzTabSheet;
    rzGrpBox1: TRzGroupBox;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzlbl3: TRzLabel;
    rzlbl4: TRzLabel;
    rzlbl5: TRzLabel;
    rzlbl6: TRzLabel;
    rzEdtImie: TRzEdit;
    rzEdtDrugieImie: TRzEdit;
    rzEdtNazwisko: TRzEdit;
    rzCmbxPrawoJazdy: TRzComboBox;
    rzEdtInne1: TRzEdit;
    rzEdtInne2: TRzEdit;
    rzGrpBox2: TRzGroupBox;
    rzGrpBox3: TRzGroupBox;
    rzlbl7: TRzLabel;
    rzlbl8: TRzLabel;
    rzlbl9: TRzLabel;
    rzlbl10: TRzLabel;
    rzlbl11: TRzLabel;
    rzEdtMiejscowosc: TRzEdit;
    rzEdtKod: TRzEdit;
    rzEdtWojew: TRzEdit;
    rzEdtPowiat: TRzEdit;
    rzEdtGmina: TRzEdit;
    rzlbl12: TRzLabel;
    rzlbl13: TRzLabel;
    rzlbl14: TRzLabel;
    rzlbl15: TRzLabel;
    rzlbl16: TRzLabel;
    rzlbl17: TRzLabel;
    rzlbl18: TRzLabel;
    rzlbl19: TRzLabel;
    rzEdtMarka: TRzEdit;
    rzEdtTyp: TRzEdit;
    rzEdtLadownosc: TRzEdit;
    rzEdtNrRej: TRzEdit;
    rzEdtInnyNr: TRzEdit;
    rzChckBxHDS: TRzCheckBox;
    rzChckBxWinda: TRzCheckBox;
    rzChckBxPrzyczepa: TRzCheckBox;
    img1: TImage;
    spltVw1: TSplitView;
    img2: TImage;
    ctgryBtns1: TCategoryButtons;
    rzMmo1: TRzMemo;
    procedure FormCreate(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items0Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDefinicje: TFrmDefinicje;

implementation
uses DM;

{$R *.dfm}

procedure TFrmDefinicje.ctgryBtns1Categories0Items0Click(Sender: TObject);
var
  generator: Integer;  //potrzebna do ustawienia siê na nowym rekordzie
  historia: string;   //potrzebna do zapisu historia
begin
    try
    with DataModule1.ibQryTemp, SQL do
    begin
      Close;
      Clear;
      Add('INSERT INTO kierowcy (Imie, Imie_2, Nazwisko, Prawo_jazdy, Inne_1, Inne_2, Uwagi)');
      Add('VALUES (:Imie, :Drugie_imie, :Nazwisko, :Nr_Telefonu, :KDR, :Deklaracja, :ZNW, :Lokalizacja)');
      ParamByName('Imie').AsString := Trim(rzEdtImie.Text);
      ParamByName('Imie_2').AsString := Trim(rzEdtDrugieImie.Text);
      ParamByName('Nazwisko').AsString := Trim(rzEdtNazwisko.Text);
      ParamByName('Prawo_jazdy').AsString := Trim(rzCmbxPrawoJazdy.Text);
      ParamByName('Inne_1').AsString := Trim(rzEdtInne1.Text);
      ParamByName('Inne_2').AsString := Trim(rzEdtInne2.Text);
      ParamByName('Uwagi').AsString := Trim(rzMmo1.Text);
      ExecSQL;
      DataModule1.ibTransTemp.Commit;
    end;

    with DataModule1.ibQryTemp, SQL do                    //po dodaniu w oknie wczesniejszym ustawiamy sie na nowym instruktorze
    begin
      Clear;
      Add('SELECT gen_id (gen_kierowcy_id, 0) FROM rdb$database ');
      Open;
      generator := FieldByName('gen_id').AsInteger;
    end;

{

begin
        //startuje historia
    try     //do zm. historia przypisuje legende + zawartosc editow
      historia := 'Utworzenie nowego uczestnika ' + #13#10;
      historia := historia + ' Imie: ' + EdtImie.Text + #13#10;
      historia := historia + ' Nazwisko: ' + EdtNazwisko.Text + #13#10;
      historia := historia + ' Lokalizacja: ' + cbbLokalizacja.Text + #13#10;

      with DtMdl.IBQHistoria, SQL do
      begin
        Close;
        Clear;
        Add('INSERT INTO historia (panel, id_instruk, rekord, operacja, stanowisko_k) VALUES (:panel, :id_instruk, :rekord, :operacja, :stanowisko_k)');
        ParamByName('panel').AsInteger := 2;
        ParamByName('id_instruk').AsInteger := FrmLogin.idinstruk;
        ParamByName('rekord').AsInteger := generator;
        ParamByName('operacja').AsString := historia;
        ParamByName('stanowisko_k').AsString := FrmLogin.NazwaKomp;
        ExecSQL;
        DtMdl.ibTransHistoria.Commit;
      end;
    except
      DtMdl.ibTransHistoria.Rollback;
      ShowMessage('B³¹d! Nie dodano wpisu w historii. SprawdŸ dane!');
    end;

    //koniec historia

    with DtMdl.IBQUczest, SQL do            //odœwiezenie grida z instruktorami (wczytanie )
    begin
      Close;
      Clear;
      Add('SELECT Id_uczestnik,Imie, Drugie_imie, Nazwisko,Nr_telefonu,Kdr,Deklaracja,Znw,Lokalizacja,Data_utworzenia,Aktywny FROM uczestnik ');
      Add('WHERE Usun =:usun order by Nazwisko');
      ParamByName('Usun').AsInteger := 0;
      Open;
    end;
    DtMdl.IBQUczest.Locate('id_uczestnik', generator, [loCaseInsensitive, loPartialKey]);        //znalezienie nowo dodanego

    if Application.MessageBox('Uczestnikowi nale¿y przydzieliæ zajêcia !' + #13#10 + 'Czy prze³¹czyæ teraz do zak³adki "Przydziel zajêcia" ?', 'Uwaga !!!', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
      RzPgCtrlDodUcz.ActivePageIndex := 1;
      edtPrzydzImie.Text := EdtImie.Text;
      edtPrzydzDrugieImie.Text := EdtDrugieImie.Text;
      edtPrzydzNazwisko.Text := EdtNazwisko.Text;
    end
    else
      close;

  except
    DtMdl.IBTransTemp.Rollback;
    ShowMessage('B³¹d nie uda³o siê utworzyæ nowego uczestnika ');
  end;

end;


}
end;

procedure TFrmDefinicje.ctgryBtns1Categories0Items3Click(Sender: TObject);
begin
Close;
end;

procedure TFrmDefinicje.FormCreate(Sender: TObject);
begin
RzPgCntrl1.ActivePageIndex:=0;
end;

procedure TFrmDefinicje.img1Click(Sender: TObject);
begin
img1.Picture.LoadFromFile('PrawkoPomoc.png');
end;

procedure TFrmDefinicje.img2Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;
end;

end.
