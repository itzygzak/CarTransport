unit Grafik;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.WinXCtrls, Vcl.ExtCtrls, RzPanel, Vcl.Imaging.pngimage,
  Vcl.CategoryButtons, Data.DB, Vcl.Grids, Vcl.DBGrids, SMDBGrid, Vcl.StdCtrls,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF, frxPreview, RzLabel,
  Vcl.ComCtrls, RzDTP, Vcl.DBCtrls, RzEdit, RzRadGrp;

type
  TFrmGrafik = class(TForm)
    rzpnl1: TRzPanel;
    spltVw1: TSplitView;
    img1: TImage;
    ctgryBtns1: TCategoryButtons;
    frXdbDtst1: TfrxDBDataset;
    frXrprt1: TfrxReport;
    frXdbDtst2: TfrxDBDataset;
    RzPnl4: TRzPanel;
    RzPnl2: TRzPanel;
    rzlbl1: TRzLabel;
    rzlbl2: TRzLabel;
    rzlbl3: TRzLabel;
    rzlbl4: TRzLabel;
    SMDBgrdGrafik: TSMDBGrid;
    trckBr1: TTrackBar;
    rzDtmPckrOd: TRzDateTimePicker;
    rzDtmPckrDo: TRzDateTimePicker;
    RzPnl3: TRzPanel;
    dbmmoUwagi: TDBMemo;
    img2: TImage;
    rzMmo1: TRzMemo;
    dbtxtKurs: TDBText;
    procedure img1Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ctgryBtns1Categories0Items1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure trckBr1Change(Sender: TObject);
    procedure ctgryBtns1Categories0Items0Click(Sender: TObject);
    procedure ctgryBtns1Categories0Items2Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure rzMmo1Click(Sender: TObject);
    procedure PoliczwSiatce;
    procedure SMDBgrdGrafikDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SMDBgrdGrafikGetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure ctgryBtns1Categories0Items6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGrafik: TFrmGrafik;

implementation

uses
  DM, Login;


{$R *.dfm}

procedure TFrmGrafik.ctgryBtns1Categories0Items0Click(Sender: TObject);
begin
  rzDtmPckrOd.Date := Now;

  with DataModule1.ibQryGrafik, SQL do
  begin
    Close;
    Clear;
    Add('SELECT  m.nazwa,g.id_grafik, g.data_wysylki, g.data_powrotu, g.godz_wysylki, g.godz_powrotu,g.kurs_aktywny, g.wg_dokument, g.adres_dostawy, ');
    Add(' g.nr_tel_klienta, g.uwagi FROM kierowcy k, pojazdy p, miejscowosci m, grafik g ');
    Add('WHERE k.id_kierowca = g.id_kierowca AND p.id_pojazdy = g.id_pojazdy AND m.id_miejscowosci = g.id_miejscowosci');
    Add('AND g.data_wysylki =:data_wysylkiOD ');
    ParamByName('data_wysylkiOD').AsDate := rzDtmPckrOd.Date;
    Open;
  end;
  PoliczwSiatce;
end;

procedure TFrmGrafik.ctgryBtns1Categories0Items1Click(Sender: TObject);
begin
  with DataModule1.ibQryGrafik, SQL do
  begin
    Close;
    Clear;
    Add('SELECT  m.nazwa,g.id_grafik, g.data_wysylki, g.data_powrotu, g.godz_wysylki, g.godz_powrotu,g.kurs_aktywny, g.wg_dokument, g.adres_dostawy, ');
    Add(' g.nr_tel_klienta, g.uwagi FROM kierowcy k, pojazdy p, miejscowosci m, grafik g ');
    Add('WHERE k.id_kierowca = g.id_kierowca AND p.id_pojazdy = g.id_pojazdy AND m.id_miejscowosci = g.id_miejscowosci');
    Add('AND g.data_wysylki >=:data_wysylkiOD ');
    ParamByName('data_wysylkiOD').AsDateTime := rzDtmPckrOd.DateTime;
    Open;
  end;
  PoliczwSiatce;
end;

procedure TFrmGrafik.ctgryBtns1Categories0Items2Click(Sender: TObject);
var
  historia: string;
begin
  case Application.MessageBox('Anulowanie/Dezaktywacja s³u¿y do wycofania ' + #13#10 + 'ju¿ zdefiniowanego kursu i tym samym zwolnienie ' + #13#10 + 'samochodu na okreœlony dzieñ i godzinê.' + #13#10 + 'Dezaktywowaæ ?', 'Uwaga', MB_YESNO + MB_ICONWARNING) of
    IDYES:
     begin
        //test
             if (SMDBgrdGrafik.DataSource.DataSet.FieldByName('kurs_aktywny').AsInteger) = 0 then
              begin
              ShowMessage('Ten kurs ju¿ jest dezaktywowany')
              end
             else if (SMDBgrdGrafik.DataSource.DataSet.FieldByName('kurs_aktywny').AsInteger) = 1 then
             begin
        //koniec



              with DataModule1.ibQryTemp, SQL do
                begin
                Close;
                Clear;
                Add('UPDATE grafik SET kurs_aktywny =:kurs_aktywny WHERE id_grafik =:id_grafik ');
                ParamByName('kurs_aktywny').AsInteger := 0;
                ParamByName('id_grafik').AsInteger := dbtxtKurs.Field.Value;
                ExecSQL;
                DataModule1.ibTransTemp.Commit;
                end;

                  try     //do zm. historia przypisuje legende
                    historia := ' Dezaktywowano kurs: ' + #13#10;
                    historia := historia + ' Miejscowoœæ: ' + SMDBgrdGrafik.DataSource.DataSet.FieldByName('nazwa').AsString + #13#10;  //tu z siatki
                    historia := historia + ' Data wysy³ki ' + DateToStr(SMDBgrdGrafik.DataSource.DataSet.FieldByName('data_wysylki').AsDateTime) + #13#10;
                    historia := historia + ' Godz wysy³ki ' + DateToStr(SMDBgrdGrafik.DataSource.DataSet.FieldByName('godz_wysylki').AsDateTime) + #13#10;
                    historia := historia + ' Wg dokumentu: ' + SMDBgrdGrafik.DataSource.DataSet.FieldByName('wg_dokument').AsString + #13#10;

                    with DataModule1.ibQryHistoria, SQL do
                    begin
                    Close;
                    Clear;
                    Add('INSERT INTO historia (panel, id_uzyt, rekord, operacja, stanowisko_k) VALUES (:panel, :id_uzyt, :rekord, :operacja, :stanowisko_k)');
                    ParamByName('panel').AsInteger := 1;
                    ParamByName('id_uzyt').AsInteger := FrmLogin.IDUzyt;
                    ParamByName('rekord').AsInteger := dbtxtKurs.Field.Value; //id zaznaczone w siatce dotyczy ig grafika
                    ParamByName('operacja').AsString := historia;
                    ParamByName('stanowisko_k').AsString := FrmLogin.NazwaKomp;
                    ExecSQL;
                    DataModule1.ibTransHistoria.Commit;
                    end;
                  except
                    DataModule1.ibTransHistoria.Rollback;
                    ShowMessage('B³¹d! Nie dodano wpisu w historii. SprawdŸ dane!');
                  end;
             end; //do test
    //koniec historia


        SMDBgrdGrafik.RefreshData;
      end;
    IDNO:
      begin
        rzDtmPckrOd.SetFocus;
      end;
  end;

end;

procedure TFrmGrafik.ctgryBtns1Categories0Items3Click(Sender: TObject);
begin
    if (SMDBgrdGrafik.DataSource.DataSet.FieldByName('kurs_aktywny').AsInteger) = 0 then
        begin
         ShowMessage('Nie mo¿na wydrukowaæ drukowaæ zakoñczonego kursu.')
        end
        else if (SMDBgrdGrafik.DataSource.DataSet.FieldByName('kurs_aktywny').AsInteger) = 1 then
        begin
         frXrprt1.ShowReport();
        end;
end;

procedure TFrmGrafik.ctgryBtns1Categories0Items6Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmGrafik.FormCreate(Sender: TObject);
begin
  rzDtmPckrOd.Date := StrToDate('01.07.2021');
  rzDtmPckrDo.Date := Now;
end;

procedure TFrmGrafik.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F5:
      ctgryBtns1.Categories[0].Items[1].OnClick(Sender);
    VK_F6:
      ctgryBtns1.Categories[0].Items[0].OnClick(Sender);
    VK_F11:
      ctgryBtns1.Categories[0].Items[3].OnClick(Sender);
    VK_F12:
      ctgryBtns1.Categories[0].Items[5].OnClick(Sender);
    VK_F7:
      ctgryBtns1.Categories[0].Items[2].OnClick(Sender);
  end;
end;

procedure TFrmGrafik.FormShow(Sender: TObject);
begin
          {
  with DataModule1.ibQryGrafik, SQL do
  begin
    Close;
    Clear;
    Add('SELECT  k.imie, k.nazwisko, p.marka, p.typ, p.ladownosc, m.nazwa, m.kod_pocztowy, g.data_wysylki, ');
    Add('g.godz_wysylki, g.wg_dokument, g.adres_dostawy, g.nr_tel_klienta, g.uwagi, g.data_powrotu, g.godz_powrotu, g.kurs_aktywny FROM kierowcy k, pojazdy p, miejscowosci m, grafik g ');
    Add('WHERE k.id_kierowca = g.id_kierowca AND p.id_pojazdy = g.id_pojazdy AND m.id_miejscowosci = g.id_miejscowosci ORDER BY g.data_wysylki DESC');
    Open;
  end;   }
 // PoliczwSiatce    g.id_grafik,
end;

procedure TFrmGrafik.img1Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;

end;

procedure TFrmGrafik.img2Click(Sender: TObject);
begin
  rzMmo1.Visible := True;
end;

procedure TFrmGrafik.rzMmo1Click(Sender: TObject);
begin
  rzMmo1.Visible := False;
end;

procedure TFrmGrafik.SMDBgrdGrafikDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  sText: string;
begin
  if ((Column.Field.FieldName) = 'KURS_AKTYWNY') then
  begin                                          //zamiana wyœwietlanej wartoœci w komórce z 1 lub 0 na tak lub nie
    if Column.Field.Value = 1 then
      sText := 'TAK'
    else if Column.Field.Value = 0 then
      sText := 'NIE'
    else
      sText := '';
    (Sender as TDBGrid).Canvas.FillRect(Rect);
    (Sender as TDBGrid).Canvas.TextRect(Rect, Rect.Left + 3, Rect.Top + 2, sText);
  end
  else
  begin { I added this to draw all other columns as defaultdrawing is off }
    (Sender as TDBGrid).defaultdrawcolumncell(Rect, DataCol, Column, State);
  end;

end;

procedure TFrmGrafik.SMDBgrdGrafikGetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if Assigned(Field) and (UpperCase(Field.FieldName) = 'KURS_AKTYWNY') then
  begin
    if Field.AsInteger = 1 then
    begin
      AFont.Style := [fsBold];
      Background := clPurple;

    end
    else
    begin
      AFont.Style := [];
      Background := clWhite;
    end
  end;

end;

procedure TFrmGrafik.trckBr1Change(Sender: TObject);
begin
  dbmmoUwagi.Font.Size := trckBr1.Position + 1;
  SMDBgrdGrafik.Font.Size := trckBr1.Position + 1;

end;

procedure TFrmGrafik.PoliczwSiatce;
begin
  SMDBgrdGrafik.DataSource := DataModule1.dsGrafik;
  SMDBgrdGrafik.Columns[0].FooterText := 'Liczba kursów';
  SMDBgrdGrafik.Columns[1].FooterType := ftCount;
  SMDBgrdGrafik.FooterColor := clSkyBlue;
  SMDBgrdGrafik.CalculateTotals();
 // SMDBgrdGrafik.Columns[5].InplaceEditor :=ieCheckbox;
end;

end.

