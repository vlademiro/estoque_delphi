unit U_Form_Pesquisa_Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_Pesquisa_Padrao = class(TForm)
    Panel1: TPanel;
    cb_Chave_Pesquisa: TComboBox;
    Label1: TLabel;
    ed_Nome: TEdit;
    mk_inicio: TMaskEdit;
    mk_fim: TMaskEdit;
    lb_inicio: TLabel;
    lb_Nome: TLabel;
    lb_fim: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    bt_pesquisar: TBitBtn;
    bt_transferir: TBitBtn;
    bt_imprimir: TBitBtn;
    Q_pesq_padrao: TFDQuery;
    ds_pesq_padrao: TDataSource;
    procedure cb_Chave_PesquisaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pesquisa_Padrao: TFrm_Pesquisa_Padrao;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_Pesquisa_Padrao.cb_Chave_PesquisaChange(Sender: TObject);
begin
  case cb_Chave_Pesquisa.ItemIndex of
  0:begin // Pesquisa pelo código
    ed_nome.Visible := true;

    mk_inicio.Visible := false;
    mk_fim.Visible := false;

    lb_nome.Visible := true;
    lb_inicio.Visible := false;
    lb_fim.Visible := false;
    lb_nome.Caption := 'Digite o código';

    ed_nome.SetFocus;
  end;

  1:begin // Pesquisa pelo nome
    ed_nome.Visible := true;

    mk_inicio.Visible := false;
    mk_fim.Visible := false;

    lb_nome.Visible := true;
    lb_inicio.Visible := false;
    lb_fim.Visible := false;

    lb_nome.Caption := 'Digite o nome';

    ed_nome.SetFocus;
  end;

  2:begin // Pesquisa por data de cadastro
    ed_nome.Visible := false;
    mk_inicio.Visible := true;
    mk_fim.Visible := false;

    lb_nome.Visible := false;
    lb_inicio.Visible := true;
    lb_fim.Visible := false;
    lb_inicio.Caption := 'Digite a data';

    mk_inicio.SetFocus;
  end;

  3:begin // Pesquisa por período
    ed_nome.Visible := false;
    mk_inicio.Visible := true;
    mk_fim.Visible := true;

    lb_nome.Visible := false;
    lb_inicio.Visible := true;
    lb_inicio.Caption := 'Digite o período';
    lb_fim.Visible := true;

    mk_inicio.SetFocus;

  end;

  4:begin // Todos
    ed_nome.Visible := false;
    mk_inicio.Visible := false;
    mk_fim.Visible := false;

    lb_nome.Visible := false;
    lb_inicio.Visible := true;
    lb_fim.Visible := false;

    lb_inicio.Caption := 'Mostrando todos os registros';

  end;

  end;

end;

procedure TFrm_Pesquisa_Padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // Enter faz a função do tab
  if key=#13 then
  begin
    key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;

end;

end.
