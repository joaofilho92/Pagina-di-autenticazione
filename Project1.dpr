program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {F_Principale},
  Unit2 in 'Unit2.pas' {F_Login},
  Unit3 in 'Unit3.pas' {F_Registrati},
  Unit4 in 'Unit4.pas' {Dm_1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Login, F_Login);
  Application.CreateForm(TF_Principale, F_Principale);
  Application.CreateForm(TF_Registrati, F_Registrati);
  Application.CreateForm(TDm_1, Dm_1);
  Application.Run;
end.
