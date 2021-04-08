unit U_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Produto = class(TFrm_Padrao)
    Q_PadraoID_PRODUTO: TIntegerField;
    Q_PadraoPRODUTO_DESCRICAO: TStringField;
    Q_PadraoID_FORNECEDOR: TIntegerField;
    Q_PadraoVL_CUSTO: TFMTBCDField;
    Q_PadraoVL_VENDA: TFMTBCDField;
    Q_PadraoESTOQUE: TFMTBCDField;
    Q_PadraoESTOQUE_MIN: TFMTBCDField;
    Q_PadraoUNIDADE: TStringField;
    Q_PadraoCADASTRO: TDateField;
    Q_PadraoNOME: TStringField;
    Label1: TLabel;
    DB_ID_PRODUTO: TDBEdit;
    Label2: TLabel;
    DB_PRODUTO_DESCRICAO: TDBEdit;
    Label3: TLabel;
    DB_ID_FORNECEDOR: TDBEdit;
    Label4: TLabel;
    DB_VL_CUSTO: TDBEdit;
    Label5: TLabel;
    DB_VL_VENDA: TDBEdit;
    Label6: TLabel;
    DB_ESTOQUE: TDBEdit;
    Label7: TLabel;
    DB_ESTOQUE_MIN: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DB_CADASTRO: TDBEdit;
    DB_NOME_FORNECEDOR: TDBEdit;
    DB_UNIDADE: TDBComboBox;
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Produto: TFrm_Produto;

implementation

{$R *.dfm}

procedure TFrm_Produto.btnNovoClick(Sender: TObject);
begin
  inherited;
  DB_CADASTRO.Text := dateToStr(now);
  DB_ID_PRODUTO.SetFocus;
end;

end.
