unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm6 = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    RadioButton15: TRadioButton;
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure RadioButton10Click(Sender: TObject);
    procedure RadioButton12Click(Sender: TObject);
    procedure RadioButton13Click(Sender: TObject);
    procedure RadioButton15Click(Sender: TObject);
    procedure RadioButton14Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  var mas :array[0..15] of integer;
  i: Integer;
  n:integer;
  x:integer;
  j,k,z:integer;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, math;

procedure TForm6.Button1Click(Sender: TObject);
begin

case x  of
0:if mas[x]=1 then begin showmessage('�� ������,����������!!!');j:=j+1;z:=z+1;radiobutton1.Visible:=false;radiobutton1.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end else begin showmessage('�� ������������!');k:=k+1;z:=z+1; radiobutton1.Visible:=false;radiobutton1.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end;
1:if mas[x]=1 then begin showmessage('�� ������,����������!!!');j:=j+1;z:=z+1;radiobutton2.Visible:=false;radiobutton2.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end else begin showmessage('�� ������������!');k:=k+1;z:=z+1; radiobutton2.Visible:=false;radiobutton2.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end;
2:if mas[x]=1 then begin showmessage('�� ������,����������!!!');j:=j+1;z:=z+1;radiobutton3.Visible:=false;radiobutton3.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end else begin showmessage('�� ������������!');k:=k+1;z:=z+1; radiobutton3.Visible:=false;radiobutton3.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end;
3:if mas[x]=1 then begin showmessage('�� ������,����������!!!');j:=j+1;z:=z+1;radiobutton4.Visible:=false;radiobutton4.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end else begin showmessage('�� ������������!');k:=k+1;z:=z+1; radiobutton4.Visible:=false;radiobutton4.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end;
4:if mas[x]=1 then begin showmessage('�� ������,����������!!!');j:=j+1;z:=z+1;radiobutton5.Visible:=false;radiobutton5.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end else begin showmessage('�� ������������!');k:=k+1;z:=z+1; radiobutton5.Visible:=false;radiobutton5.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end;
5:if mas[x]=1 then begin showmessage('�� ������,����������!!!');j:=j+1;z:=z+1;radiobutton6.Visible:=false;radiobutton6.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end else begin showmessage('�� ������������!');k:=k+1;z:=z+1; radiobutton6.Visible:=false;radiobutton6.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end;
6:if mas[x]=1 then begin showmessage('�� ������,����������!!!');j:=j+1;z:=z+1;radiobutton7.Visible:=false;radiobutton7.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end else begin showmessage('�� ������������!');k:=k+1;z:=z+1; radiobutton7.Visible:=false;radiobutton7.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end;
7:if mas[x]=1 then begin showmessage('�� ������,����������!!!');j:=j+1;z:=z+1;radiobutton8.Visible:=false;radiobutton8.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end else begin showmessage('�� ������������!');k:=k+1;z:=z+1; radiobutton8.Visible:=false;radiobutton8.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end;
8:if mas[x]=1 then begin showmessage('�� ������,����������!!!');j:=j+1;z:=z+1;radiobutton9.Visible:=false;radiobutton9.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end else begin showmessage('�� ������������!');k:=k+1;z:=z+1; radiobutton9.Visible:=false;radiobutton9.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end;
9:if mas[x]=1 then begin showmessage('�� ������,����������!!!');j:=j+1;z:=z+1;radiobutton10.Visible:=false;radiobutton10.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end else begin showmessage('�� ������������!');k:=k+1;z:=z+1; radiobutton10.Visible:=false;radiobutton10.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end;
10:if mas[x]=1 then begin showmessage('�� ������,����������!!!');j:=j+1;z:=z+1;radiobutton11.Visible:=false;radiobutton11.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end else begin showmessage('�� ������������!');k:=k+1;z:=z+1; radiobutton11.Visible:=false;radiobutton11.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end;
11:if mas[x]=1 then begin showmessage('�� ������,����������!!!');j:=j+1;z:=z+1;radiobutton12.Visible:=false;radiobutton12.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end else begin showmessage('�� ������������!');k:=k+1;z:=z+1; radiobutton12.Visible:=false;radiobutton12.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end;
12:if mas[x]=1 then begin showmessage('�� ������,����������!!!');j:=j+1;z:=z+1;radiobutton13.Visible:=false;radiobutton13.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end else begin showmessage('�� ������������!');k:=k+1;z:=z+1; radiobutton13.Visible:=false;radiobutton13.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end;
13:if mas[x]=1 then begin showmessage('�� ������,����������!!!');j:=j+1;z:=z+1;radiobutton14.Visible:=false;radiobutton14.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end else begin showmessage('�� ������������!');k:=k+1;z:=z+1; radiobutton14.Visible:=false;radiobutton14.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end;
14:if mas[x]=1 then begin showmessage('�� ������,����������!!!');j:=j+1;z:=z+1;radiobutton15.Visible:=false;radiobutton15.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end else begin showmessage('�� ������������!');k:=k+1;z:=z+1; radiobutton15.Visible:=false;radiobutton15.Checked:=false;label1.Caption:='�����:'+inttostr(z)+#13+'�����:'+inttostr(j)+#13+'��������:'+inttostr(k); end;
end;
button1.enabled:=false;
if z=15 then
button2.Enabled:=true;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
form2.Show;
form6.Hide;
end;

procedure TForm6.FormCreate(Sender: TObject);

begin
n:=1;
x:=0;
  j:=0;
  k:=0;
  z:=0;
  button1.enabled:=false;
  for i := 0 to 15 do
begin
mas[i]:=random(2);
end;
end;

procedure TForm6.RadioButton10Click(Sender: TObject);
begin
button1.enabled:=true;
x:=9
end;

procedure TForm6.RadioButton11Click(Sender: TObject);
begin
button1.enabled:=true;
x:=10
end;

procedure TForm6.RadioButton12Click(Sender: TObject);
begin
button1.enabled:=true;
x:=11
end;

procedure TForm6.RadioButton13Click(Sender: TObject);
begin
button1.enabled:=true;
x:=12
end;

procedure TForm6.RadioButton14Click(Sender: TObject);
begin
button1.enabled:=true;
x:=13
end;

procedure TForm6.RadioButton15Click(Sender: TObject);
begin
button1.enabled:=true;
x:=14
end;

procedure TForm6.RadioButton1Click(Sender: TObject);
begin
button1.enabled:=true;
x:=0;
end;

procedure TForm6.RadioButton2Click(Sender: TObject);
begin
button1.enabled:=true;
x:=1;
end;

procedure TForm6.RadioButton3Click(Sender: TObject);
begin
button1.enabled:=true;
x:=2;
end;

procedure TForm6.RadioButton4Click(Sender: TObject);
begin
button1.enabled:=true;
x:=3
end;

procedure TForm6.RadioButton5Click(Sender: TObject);
begin
button1.enabled:=true;
x:=4;
end;

procedure TForm6.RadioButton6Click(Sender: TObject);
begin
button1.enabled:=true;
x:=5;
end;

procedure TForm6.RadioButton7Click(Sender: TObject);
begin
button1.enabled:=true;
x:=6
end;

procedure TForm6.RadioButton8Click(Sender: TObject);
begin
button1.enabled:=true;
x:=7;
end;

procedure TForm6.RadioButton9Click(Sender: TObject);
begin
button1.enabled:=true;
x:=8
end;

end.
