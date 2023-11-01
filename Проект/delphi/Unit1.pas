unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Menus, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    MainMenu1: TMainMenu;
    Open1: TMenuItem;
    nextslide1: TMenuItem;
    nextslide2: TMenuItem;
    Label1: TLabel;
    N1: TMenuItem;
    buhf1: TMenuItem;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure nextslide2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure nextslide1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure buhf1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, Unit6, ShellAPI;

procedure TForm1.buhf1Click(Sender: TObject);
begin
form6.Show;
form1.Hide;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
form2.show;
form1.Hide;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
tsplash.close();
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
ShellExecute(0, PChar('Open'), PChar ('sprawka.chm'), nil, nil, SW_SHOW);
end;


procedure TForm1.N1Click(Sender: TObject);
begin
form5.Show;
form1.Hide;
end;

procedure TForm1.nextslide1Click(Sender: TObject);
begin
form2.show;
form1.Hide;
end;

procedure TForm1.nextslide2Click(Sender: TObject);
begin
tsplash.close();
end;

end.
