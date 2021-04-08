unit U_Fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Fornecedor = class(TFrm_Padrao)
    Q_PadraoID_FORNECEDOR: TFDAutoIncField;
    Q_PadraoNOME: TStringField;
    Q_PadraoENDERECO: TStringField;
    Q_PadraoNUMERO: TIntegerField;
    Q_PadraoBAIRRO: TStringField;
    Q_PadraoCIDADE: TStringField;
    Q_PadraoUF: TStringField;
    Q_PadraoCEP: TStringField;
    Q_PadraoTELEFONE: TStringField;
    Q_PadraoCNPJ: TStringField;
    Q_PadraoEMAIL: TStringField;
    Q_PadraoCADASTRO: TDateField;
    Label1: TLabel;
    DB_ID_Fornecedor: TDBEdit;
    Label2: TLabel;
    DB_Nome: TDBEdit;
    Label3: TLabel;
    DB_Endereco: TDBEdit;
    Label4: TLabel;
    DB_Numero: TDBEdit;
    Label5: TLabel;
    DB_Bairro: TDBEdit;
    Label6: TLabel;
    DB_Cidade: TDBEdit;
    Label7: TLabel;
    DB_UF: TDBEdit;
    Label8: TLabel;
    DB_CEP: TDBEdit;
    Label9: TLabel;
    DB_Telefone: TDBEdit;
    Label10: TLabel;
    DB_CNPJ: TDBEdit;
    Label11: TLabel;
    DB_Email: TDBEdit;
    Label12: TLabel;
    DB_Cadastro: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Fornecedor: TFrm_Fornecedor;

implementation

{$R *.dfm}

procedure TFrm_Fornecedor.btnNovoClick(Sender: TObject);
begin
  inherited;
    DB_Cadastro.Text := dateToStr(now);
    DB_Nome.SetFocus;
end;

end.
