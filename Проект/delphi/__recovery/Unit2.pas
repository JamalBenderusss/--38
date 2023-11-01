unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ComObj, Vcl.Grids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Menus, Vcl.OleCtrls, SHDocVw, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Биография: TTabSheet;
    myStringGrid: TStringGrid;
    Button1: TButton;
    MainMenu1: TMainMenu;
    Main1: TMenuItem;
    Main2: TMenuItem;
    quit1: TMenuItem;
    WebBrowser1: TWebBrowser;
    RadioGroup1: TRadioGroup;
    ComboBox1: TComboBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    StringGrid1: TStringGrid;
    RadioGroup2: TRadioGroup;
    N1: TMenuItem;
    Button6: TButton;
    Button7: TButton;
    N2: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure quit1Click(Sender: TObject);
    procedure Main2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  const
   xlCellTypeLastCell = $0000000B;
var
  Form2: TForm2;  ExcelApp, ExcelSheet: OLEVariant;
   MyMass: Variant;
   x, y: Integer;

implementation

{$R *.dfm}

uses Unit1, Unit3, Unit4, Unit6;




procedure TForm2.Button1Click(Sender: TObject);
begin
   ExcelApp :=CreateOleObject('Excel.Application');

   // открытие книги Excel
   ExcelApp.Workbooks.open(ExtractFilePath(Application.ExeName)+'наброски');

   // открытие листа книги
   ExcelSheet := ExcelApp.Workbooks[1].WorkSheets[1];

   // выделение последней задействованной ячейки на листе
   ExcelSheet.Cells.SpecialCells(xlCellTypeLastCell).Activate;

   // получение значений размера выбранного диапазона
   x := ExcelApp.ActiveCell.Row;
   y := ExcelApp.ActiveCell.Column;

   // присвоение массиву диапазона ячеек на листе
   MyMass := ExcelApp.Range['A1', ExcelApp.Cells.Item[X, Y]].Value;

   // закрытие книги и очистка переменных
   ExcelApp.Quit;
   ExcelApp := Unassigned;
   ExcelSheet := Unassigned;
   // назначение размера StringGrid по размеру полученного диапазона ячеек
  MyStringGrid.RowCount := x;
  MyStringGrid.ColCount := y;

// заполнение таблицы StringGrid значениями массива
for x := 1 to MyStringGrid.ColCount do
  for y := 1 to MyStringGrid.RowCount do
      MyStringGrid.Cells[x-1, y-1] := MyMass[y, x];

end;

procedure TForm2.Button2Click(Sender: TObject);
var i:integer;
begin
case radiogroup1.ItemIndex of
0:begin case combobox1.itemindex of 0:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Тибо Куртуа.htm');1:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Андрей  Лунин.htm'); end; end;
1:begin case combobox1.itemindex of 0:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Эдер Милитао.htm');1:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Давид Алаба.htm');2:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Антонио Рюдигер.htm');3:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Начо.htm');4:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Хесус.htm'); end; end;
2:begin case combobox1.itemindex of 0:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Менди ферлан.htm');end;end;
3:begin case combobox1.itemindex of 0:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Карвахаль.htm');1:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Вазкез.htm');2:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Одриосола.htm');end;end;
4:begin case combobox1.itemindex of 0:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Чуамени.htm');end;end;
5:begin case combobox1.itemindex of 0:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Вальверде.htm');1:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\камавинга.htm');2:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Кросс.htm');3:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Себалес.htm');4:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\лука модрич.htm');end;end;
6:begin case combobox1.itemindex of 0:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Винисиус.htm');1:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Азар.htm');end;end;
7:begin case combobox1.itemindex of 0:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\родриго.htm');1:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Асенсио.htm');end;end;
8:begin case combobox1.itemindex of 0:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\бензима.htm');1:webBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'Биография\Мариано диаз.htm');end;end;
end;
end;

procedure TForm2.Button3Click(Sender: TObject);
var i,j,x,z:integer;
p:string;
begin
z:=0;
for x:=1 to mystringGrid.RowCount do
stringgrid1.Cells[x-1,z]:=MyStringGrid.cells[x-1,3];
z:=z+1;
case radiogroup2.ItemIndex of
0:
begin
p:=edit1.Text;
for j := 1 to MyStringGrid.RowCount do
begin
  if mystringgrid.Cells[3,j-1]=p then
  begin
    for x:=1 to mystringGrid.RowCount do
    stringgrid1.Cells[x-1,z]:=MyStringGrid.cells[x-1,j-1];
    z:=z+1;
  continue;
  end;
end;
end;
1:begin p:=edit1.Text;
for j := 1 to MyStringGrid.RowCount do
begin
  if mystringgrid.Cells[4,j-1]=p then
  begin
    for x:=1 to mystringGrid.RowCount do
    stringgrid1.Cells[x-1,z]:=MyStringGrid.cells[x-1,j-1];
    z:=z+1;
  continue;
  end;
end;
end;
2:begin         p:=edit1.Text;
for j := 1 to MyStringGrid.RowCount do
begin
  if mystringgrid.Cells[5,j-1]=p then
  begin
    for x:=1 to mystringGrid.RowCount do
    stringgrid1.Cells[x-1,z]:=MyStringGrid.cells[x-1,j-1];
    z:=z+1;
  continue;
  end;
end;
end;
3:begin                       p:=edit1.Text;
for j := 1 to MyStringGrid.RowCount do
begin
  if mystringgrid.Cells[6,j-1]=p then
  begin
    for x:=1 to mystringGrid.RowCount do
    stringgrid1.Cells[x-1,z]:=MyStringGrid.cells[x-1,j-1];
    z:=z+1;
  continue;
  end;
end;
end;
4:
begin                                 p:=edit1.Text;
for j := 1 to MyStringGrid.RowCount do
begin
  if mystringgrid.Cells[8,j-1]=p then
  begin
    for x:=1 to mystringGrid.RowCount do
    stringgrid1.Cells[x-1,z]:=MyStringGrid.cells[x-1,j-1];
    z:=z+1;
  continue;
  end;
end;
end;
5:begin                                             p:=edit1.Text;
for j := 1 to MyStringGrid.RowCount do
begin
  if mystringgrid.Cells[9,j-1]=p then
  begin
    for x:=1 to mystringGrid.RowCount do
    stringgrid1.Cells[x-1,z]:=MyStringGrid.cells[x-1,j-1];
    z:=z+1;
  continue;
  end;
end;
end;
6:begin                                                           p:=edit1.Text;
for j := 1 to MyStringGrid.RowCount do
begin
  if mystringgrid.Cells[10,j-1]=p then
  begin
    for x:=1 to mystringGrid.RowCount do
    stringgrid1.Cells[x-1,z]:=MyStringGrid.cells[x-1,j-1];
    z:=z+1;
    continue;
  end;
end;
end;
7:begin                                                                     p:=edit1.Text;
for j := 1 to MyStringGrid.RowCount do
begin
  if mystringgrid.Cells[11,j-1]=p then
  begin
    for x:=1 to mystringGrid.RowCount do
    stringgrid1.Cells[x-1,z]:=MyStringGrid.cells[x-1,j-1];
    z:=z+1;
  continue;
  end;
end;
end;
8:
begin                                                                    p:=edit1.Text;
for j := 1 to MyStringGrid.RowCount do
begin
  if mystringgrid.Cells[12,j-1]=p then
  begin
    for x:=1 to mystringGrid.RowCount do
    stringgrid1.Cells[x-1,z]:=MyStringGrid.cells[x-1,j-1];
    z:=z+1;
  continue;
  end;
end;
end;
end;
end;



procedure TForm2.Button4Click(Sender: TObject);
var i,pos,j:integer;
begin
pos:=mystringgrid.Row;
j:=0;
if (pos=0) or (pos>mystringgrid.rowcount-1) then   exit;
for i := pos to MyStringGrid.rowCount-1 do
begin
mystringgrid.Cells[0,i]:=mystringgrid.Cells[0,i+1];
mystringgrid.Cells[1,i]:=mystringgrid.Cells[1,i+1];
mystringgrid.Cells[2,i]:=mystringgrid.Cells[2,i+1];
mystringgrid.Cells[3,i]:=mystringgrid.Cells[3,i+1];
mystringgrid.Cells[4,i]:=mystringgrid.Cells[4,i+1];
mystringgrid.Cells[5,i]:=mystringgrid.Cells[5,i+1];
mystringgrid.Cells[6,i]:=mystringgrid.Cells[6,i+1];
mystringgrid.Cells[7,i]:=mystringgrid.Cells[7,i+1];
mystringgrid.Cells[8,i]:=mystringgrid.Cells[8,i+1];
mystringgrid.Cells[9,i]:=mystringgrid.Cells[9,i+1];
mystringgrid.Cells[10,i]:=mystringgrid.Cells[10,i+1];
mystringgrid.Cells[11,i]:=mystringgrid.Cells[11,i+1];
mystringgrid.Cells[12,i]:=mystringgrid.Cells[12,i+1];
end;
mystringgrid.RowCount:=mystringgrid.rowCount-1;
     end;

procedure TForm2.Button5Click(Sender: TObject);
begin
mystringgrid.Options:=mystringgrid.Options+[goediting]
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
form5.show;
form2.hide;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
mystringgrid.RowCount:=mystringgrid.rowCount+1
end;

procedure TForm2.Main2Click(Sender: TObject);
begin
form1.Show;
form2.Hide;
end;

procedure TForm2.N1Click(Sender: TObject);
begin
form5.show;
form2.Hide;
end;

procedure TForm2.N2Click(Sender: TObject);
begin
form6.show;
form2.Hide;
end;

procedure TForm2.quit1Click(Sender: TObject);
begin
tsplash.close;
end;

procedure TForm2.RadioGroup1Click(Sender: TObject);
begin
case radiogroup1.ItemIndex of
0:begin combobox1.Items.Clear; combobox1.items.add('Тибо Куртуа');combobox1.items.add('Андрей Лунин'); end;
1:begin combobox1.Items.Clear; combobox1.items.add('Эдер Милитао');combobox1.items.add('Давид Алаба');combobox1.items.add('Антонио Рудигер');combobox1.items.add('Начо Фернандес');combobox1.items.add('Хесус Вальейхо') end;
2:begin combobox1.Items.Clear; combobox1.items.add('Ферлан Менди');end;
3:begin combobox1.Items.Clear; combobox1.items.add('Даниэль Карвахаль');combobox1.items.add('Лукас Вазкес');combobox1.items.add('Альваро Адриазола');end;
4:begin combobox1.Items.Clear; combobox1.items.add('Орельен Чуамени'); end;
5:begin combobox1.Items.Clear; combobox1.items.add('Федерико Вальверде');combobox1.items.add('Эдуардо Камавинга');combobox1.items.add('Тони Кросс');combobox1.items.add('Дани Себальос');combobox1.items.add('Лука Модрич'); end;
6:begin combobox1.Items.Clear; combobox1.items.add('Винисиус Джуниор');combobox1.items.add('Эден Азар');end;
7:begin combobox1.Items.Clear; combobox1.items.add('Родриго');combobox1.items.add('Марко Асенсио');end;
8:begin combobox1.Items.Clear; combobox1.items.add('Карим Бензема');combobox1.items.add('Мариано Диаз');end;
end;
end;

end.
