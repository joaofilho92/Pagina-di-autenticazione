unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TF_Principale = class(TForm)
    MainMenu1: TMainMenu;
    Home1: TMenuItem;
    Exit1: TMenuItem;
    Registro1: TMenuItem;
    Panel1: TPanel;
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principale: TF_Principale;

implementation

{$R *.dfm}

procedure TF_Principale.Exit1Click(Sender: TObject);
begin
  Close;
end;

end.
