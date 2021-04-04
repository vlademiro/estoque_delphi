unit U_Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Empresa = class(TFrm_Padrao)
    Q_PadraoID_EMPRESA: TIntegerField;
    Q_PadraoRAZAO_SOCIAL: TStringField;
    Q_PadraoN_FANTASIA: TStringField;
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
    Q_PadraoLOGO: TBlobField;
    Label1: TLabel;
    DB_ID_Empresa: TDBEdit;
    Label2: TLabel;
    DB_RazaoSocial: TDBEdit;
    Label3: TLabel;
    DB_Fantasia: TDBEdit;
    Label4: TLabel;
    DB_Endereco: TDBEdit;
    Label5: TLabel;
    DB_Numero: TDBEdit;
    Label6: TLabel;
    DB_Bairro: TDBEdit;
    Label7: TLabel;
    DB_Cidade: TDBEdit;
    Label8: TLabel;
    DB_UF: TDBEdit;
    Label9: TLabel;
    DB_CEP: TDBEdit;
    Label10: TLabel;
    DB_Telefone: TDBEdit;
    Label11: TLabel;
    DB_CNPJ: TDBEdit;
    Label12: TLabel;
    DB_Email: TDBEdit;
    Label13: TLabel;
    DB_Cadastro: TDBEdit;
    Label14: TLabel;
    DB_Logomarca: TDBImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Empresa: TFrm_Empresa;

implementation

{$R *.dfm}

end.
