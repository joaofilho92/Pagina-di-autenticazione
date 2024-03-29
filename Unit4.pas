unit Unit4;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDm_1 = class(TDataModule)
    FDConnection1: TFDConnection;
  private
    FidUtente: Integer;
    FUserName: String;
    { Private declarations }
  public
    { Public declarations }
    property IdUtente: Integer read FidUtente write FidUtente;
    property UserName: String read FUserName write FUserName;
    function Login(UserName: string; password: string): boolean;
  end;

var
  Dm_1: TDm_1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit2, Unit1;

{$R *.dfm}

{ TDm_1 }

function TDm_1.Login(UserName, Password: string): boolean;
begin
  var
    Q: TFDQuery;
begin
  Q := TFDQuery.Create(Self);
  try
    Q.Connection := FDConnection1;
    Q.SQL.Text := 'SELECT LOGIN, PASSWORD FROM Login WHERE LOGIN = :Login AND PASSWORD = :Password';
    Q.ParamByName('Login').AsString := UserName;
    Q.ParamByName('Password').AsString := Password;
    Q.Open;

    if not Q.IsEmpty then
    begin
      Result := true;
    end
    else
      Result := false;
  finally
    Q.Free;
  end;
end;
end;
end.
