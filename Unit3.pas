unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,Unit4,FireDAC.Comp.Client;

type
  TF_Registrati = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    E_Nome: TEdit;
    E_Cognome: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    E_Codice_Fiscale: TEdit;
    Label6: TLabel;
    Cb_Sesso: TComboBox;
    Label7: TLabel;
    Cb_StatoCivile: TComboBox;
    Label8: TLabel;
    E_Indirizzo_di_Residenza: TEdit;
    Label10: TLabel;
    E_Comune: TEdit;
    Label11: TLabel;
    D_DataDiNascita: TDateTimePicker;
    E_Civico: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    E_Email: TEdit;
    Label14: TLabel;
    E_Login: TEdit;
    Label15: TLabel;
    E_Password: TEdit;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure salvaParametri;
  public
    { Public declarations }
  end;

var
  F_Registrati: TF_Registrati;

implementation

{$R *.dfm}

procedure TF_Registrati.Button1Click(Sender: TObject);
begin
  salvaParametri;
end;

procedure TF_Registrati.Button2Click(Sender: TObject);
begin
  E_Codice_Fiscale.Text := '';
  E_Nome.Text := '';
  E_Cognome.Text := '';
  Cb_StatoCivile.ItemIndex := -1;
  E_Indirizzo_di_Residenza.Text := '';
  E_Civico.Text := '';
  E_Comune.Text := '';
  E_Codice_Fiscale.Text := '';
  E_Email.Text := '';
  E_Login.Text := '';
  E_Password.Text := '';
  Cb_Sesso.ItemIndex := -1;
  D_DataDiNascita.Date := date;
end;


procedure TF_Registrati.salvaParametri;
begin
  var
    Q: TFDQuery;
begin
  Q := TFDQuery.Create(Self);
  try
   Q.Connection := Dm_1.FDConnection1;
   Q.SQL.Text := 'INSERT INTO Login (NOME, COGNOME, CODICE_FISCALE, SESSO, STATO_CIVILE, INDIRIZZO_RESIDENZA, CIVICO, COMUNE_RESIDENZA, EMAIL, LOGIN, PASSWORD, DATA_DI_NASCITA) ' +
              'VALUES (:Nome, :Cognome, :CodiceFiscale, :Sesso, :StatoCivile, :IndirizzoResidenza, :Civico, :Comune, :Email, :Login, :Password, :DataNascita)';
    Q.ParamByName('Nome').AsString := E_Nome.Text;
    Q.ParamByName('Cognome').AsString := E_Cognome.Text;
    Q.ParamByName('CodiceFiscale').AsString := E_Codice_Fiscale.Text;
    Q.ParamByName('Sesso').AsString := Cb_Sesso.Text;
    Q.ParamByName('StatoCivile').AsString := Cb_StatoCivile.Text;
    Q.ParamByName('IndirizzoResidenza').AsString := E_Indirizzo_di_Residenza.Text;
    Q.ParamByName('Comune').AsString := E_Comune.Text;
    Q.ParamByName('DataNascita').AsDate := D_DataDiNascita.Date;
    Q.ParamByName('Civico').AsString := E_Civico.Text;
    Q.ParamByName('Email').AsString := E_Email.Text;
    Q.ParamByName('Login').AsString := E_Login.Text;
    Q.ParamByName('Password').AsString := E_Password.Text;

    Q.ExecSQL;
    ShowMessage('Dados inseridos com sucesso.');
    F_Registrati.Hide;
  finally
    Q.Free;
  end;
end;
end;

end.
