unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Unit1;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    E_username: TEdit;
    E_password: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Login(Username, Password : String) : Boolean;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  Acesso : Boolean;
  Username : String;
  Password : String;

begin
  Username := E_username.Text;
  Password := E_password.Text;

  Acesso := Login(Username, Password);
end;

function TForm2.Login(Username, Password : String): Boolean;
begin

if (Username = 'kd') and (Password = 'kd') then
begin
   Result := True;
   ShowMessage('ok');
   Form2.hide;
   Form1.ShowModal;
end
else
begin
   Result := False;
   ShowMessage('Denied');
  end;
end;
end.
