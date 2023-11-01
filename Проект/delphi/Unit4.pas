unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TForm5 = class(TForm)
    RadioGroup2: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Label2: TLabel;
    Button3: TButton;
    Button4: TButton;
    Label4: TLabel;
    Button5: TButton;
    N4: TMenuItem;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
f: text;
s,a: string;
Nvern, ball: integer;
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit6;

procedure TForm5.Button1Click(Sender: TObject);
var n:integer;
a:string;
begin
if (RadioGroup2.ItemIndex>-1) and (not Eof(f)) then begin
if RadioGroup2.ItemIndex = Nvern-1 then begin ball:=ball+1; label1.Font. Color:=clgreen;button3.Enabled:=true;label1.Caption:='��� ���������� �����,�������!'; button1.enabled:=false;end
else
begin
label1.Font. Color:=clred;
label1.Caption:='�������, ���������� ������� ������:'+inttostr(nvern);
button1.enabled:=false;
button3.Enabled:=true;
end;
RadioGroup2.Caption:='  ';
label4.caption:='  ';
RadioGroup2.Items.Clear; //������ ������� ������ �� ���� ������������
end
else if Eof(f) then
begin
delete(s,1,1);
Nvern:=StrToInt(s);
label1.Visible:=true;
if RadioGroup2.ItemIndex = Nvern-1 then begin ball:=ball+1; label1.Font. Color:=clgreen;button3.Enabled:=true;label1.Caption:='��� ���������� �����,�������!'; button1.enabled:=false;end
else
begin
label1.Font. Color:=clred;
label1.Caption:='�������, ���������� ������� ������:'+inttostr(nvern);
a:=' ';
button1.enabled:=false;
end;
n:=Round(100*ball/20);
if n=100 then
Label2.Caption:='������!�� ������� ����� ������������ �����.���� ���������:'+IntToStr(n)+'%';
if (n>=90)and(n<100) then
Label2.Caption:='������!�� ������ �������� ���� ������� "�����".���� ���������:'+IntToStr(n)+'%';
if (n>=80)and(n<90) then
Label2.Caption:='�������� ���������:'+IntToStr(n)+'%';
if (n>=60)and(n<80) then
Label2.Caption:='�������� ���������:'+IntToStr(n)+'%';
if (n>=40)and(n<60) then
Label2.Caption:='���� ����� ��������� ���-��� � ������ �����.���� ���������:'+IntToStr(n)+'%';
if (n>=20)and(n<40) then
Label2.Caption:='������ ���������:'+IntToStr(n)+'%';
if (n>=0)and(n<20) then
Label2.Caption:='�� �� ����� "�����".���� ���������:'+IntToStr(n)+'%';
CloseFile(f);
button3.Enabled:=false;
Button1.Enabled:=False; //������ ���������� ����������� � ���������� �������
end;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
RadioGroup2.Enabled:=true; //��������� ���������� ���� � ��������
Button1.Enabled:=true; //������ �����
AssignFile( f ,ExtractFilePath(Application.ExeName)+'variant1.txt');//����������� � ������� �������;
reset(f); //��������� ���� ��� ������
readln(f,s); //��������� ������ ������ �� �����
ball:=0; //���������� ���������� ������ 0
repeat
if (s[1]='-') then begin //���� ������ ������ ������ �-� ������ ��� ������
delete(s,1,1);
RadioGroup2.Caption:=s;
end
else if s[1]='*' then begin //���� ���� ������ �*� ������ ��� ����� ������� ������
delete(s,1,1);
Nvern:=StrToInt(s);
end
else if s[1]='/' then begin
delete(s,1,1);
a:=s;
end
else RadioGroup2.Items.Add(s); //����� ��� ������� ������
readln(f,s); //��������� ��������� ������ �� �����
until (s[1]='-') or (Eof(f));
button2.Enabled:=false;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
label2.Caption:='';
label1.Caption:=' ';
repeat
if (s[1]='-') then begin
delete(s,1,1);
RadioGroup2.Caption:=s;
end
else if s[1]='*' then begin
delete(s,1,1);
Nvern:=StrToInt(s);
end
else if s[1]='/' then begin
delete(s,1,1);
a:=s;
end
else RadioGroup2.Items.Add(s);
readln(f,s);
until (s[1]='-') or (Eof(f));
button3.Enabled:=false;
label4.caption:='  ';
button1.enabled:=true;
end;


procedure TForm5.Button4Click(Sender: TObject);
begin
label4.Enabled:=true;
label4.caption:=a;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
form6.show;
form5.hide;

end;

procedure TForm5.FormCreate(Sender: TObject);
begin
   RadioGroup2.Enabled:=false;
   ball:=0;
   nvern:=0;
end;


procedure TForm5.N2Click(Sender: TObject);
begin
form2.Show;
form5.Hide;
end;

procedure TForm5.N3Click(Sender: TObject);
begin
tsplash.close();

end;



procedure TForm5.N4Click(Sender: TObject);
begin
form6.Show;
form5.Hide;
end;

end.
