unit U_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Cliente = class(TFrm_Padrao)
    Q_PadraoID_CLIENTE: TFDAutoIncField;
    Q_PadraoNOME: TStringField;
    Q_PadraoENDERECO: TStringField;
    Q_PadraoNUMERO: TIntegerField;
    Q_PadraoBAIRRO: TStringField;
    Q_PadraoCIDADE: TStringField;
    Q_PadraoUF: TStringField;
    Q_PadraoCEP: TStringField;
    Q_PadraoTELEFONE: TStringField;
    Q_PadraoCPF: TStringField;
    Q_PadraoEMAIL: TStringField;
    Q_PadraoCADASTRO: TDateField;
    Label1: TLabel;
    DB_ID_Cliente: TDBEdit;
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
    DB_CPF: TDBEdit;
    Label11: TLabel;
    DB_Email: TDBEdit;
    Label12: TLabel;
    DB_Cadastro: TDBEdit;
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cliente: TFrm_Cliente;

implementation

{$R *.dfm}

uses U_Pesq_Cliente;

procedure TFrm_Cliente.btnPesquisarClick(Sender: TObject);
begin

  Frm_Pesq_Cliente := TFrm_Pesq_Cliente.Create(self);
  Frm_Pesq_Cliente.ShowModal;
  try
    if Frm_Pesq_Cliente.codigo > 0 then
    begin
      q_padrao.Open;
      Q_Padrao.Locate('ID_CLIENTE',Frm_Pesq_Cliente.codigo,[]);
    end;

  finally
    Frm_Pesq_Cliente.Free;
    Frm_Pesq_Cliente:=nil;
  end;

end;

end.
