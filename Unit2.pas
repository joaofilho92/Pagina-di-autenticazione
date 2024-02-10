unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Unit1,
  Vcl.Imaging.pngimage, Unit3;

type
  TF_Login = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    E_username: TEdit;
    E_password: TEdit;
    Button1: TButton;
    btn_register: TButton;
    Label3: TLabel;
    Panel2: TPanel;
    Button2: TButton;
    Label4: TLabel;
    Image1: TImage;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn_registerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Login(Username, Password : String) : Boolean;
  end;

var
  F_Login: TF_Login;

implementation

{$R *.dfm}

procedure TF_Login.btn_registerClick(Sender: TObject);
begin
  F_Registrati.ShowModal;
end;

procedure TF_Login.Button1Click(Sender: TObject);
var
  Acesso : Boolean;
  Username : String;
  Password : String;

begin
  Username := E_username.Text;
  Password := E_password.Text;

  Acesso := Login(Username, Password);
end;

procedure TF_Login.Button2Click(Sender: TObject);
begin
  Close;
end;

function TF_Login.Login(Username, Password : String): Boolean;
begin

if (Username = 'kd') and (Password = 'kd') then
begin
   Result := True;
   ShowMessage('ok');
   F_Login.hide;
   F_Principale.ShowModal;
end
else
begin
   Result := False;
   ShowMessage('Denied');
  end;
end;
end.
