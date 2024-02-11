unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Unit1,
  Vcl.Imaging.pngimage, Unit3, Unit4;

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
    Label4: TLabel;
    Image1: TImage;
    Label5: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btn_registerClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure E_passwordKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
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
begin
  Dm_1.Login(E_username.Text,E_password.Text);
end;

procedure TF_Login.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TF_Login.E_passwordKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Button1.Click;
    end;
end;


end.
