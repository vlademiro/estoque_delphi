unit U_Pesq_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_Pesquisa_Padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_Pesq_Produto = class(TFrm_Pesquisa_Padrao)
    Q_pesq_padraoID_PRODUTO: TIntegerField;
    Q_pesq_padraoPRODUTO_DESCRICAO: TStringField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoVL_CUSTO: TFMTBCDField;
    Q_pesq_padraoVL_VENDA: TFMTBCDField;
    Q_pesq_padraoESTOQUE: TFMTBCDField;
    Q_pesq_padraoESTOQUE_MIN: TFMTBCDField;
    Q_pesq_padraoUNIDADE: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    procedure bt_pesquisarClick(Sender: TObject);
    procedure bt_transferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pesq_Produto: TFrm_Pesq_Produto;

implementation

{$R *.dfm}

procedure TFrm_Pesq_Produto.bt_pesquisarClick(Sender: TObject);
begin
 Q_pesq_padrao.Close; // fecha
 Q_pesq_padrao.SQL.Add(''); // limpa
 Q_pesq_padrao.Params.Clear;  //limpamos os parametros
 Q_pesq_padrao.SQL.Clear;  // limPa o sql
 Q_pesq_padrao.SQL.Add('SELECT A.ID_PRODUTO, '
                       +'A.PRODUTO_DESCRICAO,'
                       +'A.VL_CUSTO,         '
                       +'A.VL_VENDA,         '
                       +'A.ESTOQUE,          '
                       +'A.ESTOQUE_MIN,      '
                       +'A.UNIDADE,          '
                       +'A.ID_FORNECEDOR,    '
                       +'B.NOME,             '
                       +'A.CADASTRO          '
                       +'FROM PRODUTO A      '
                       +'INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR');
   //OPÇÕES DE PESQUISA
 case cb_chave_pesquisa.ItemIndex of
   0:begin// pesquisa por c
      Q_pesq_padrao.SQL.Add('WHERE A.ID_PRODUTO =:PID_PRODUTO'); // criamos o parametro
      Q_pesq_padrao.ParamByName('PID_PRODUTO').AsString:=ed_nome.Text; // aponta para o campo do parametro

   end;

    1:begin // pesquisa por nome
      Q_pesq_padrao.SQL.Add('WHERE A.PRODUTO_DESCRICAO LIKE :PDESCRICAO'); // criamos o parametro
      Q_pesq_padrao.ParamByName('PDESCRICAO').AsString:= '%' +ed_nome.Text + '%'; // aponta para o campo do parametro

   end;

    2:begin// pesquisa por dadta
       Q_pesq_padrao.SQL.Add('WHERE A.CADASTRO =:PCADASTRO');
       Q_pesq_padrao.ParamByName('PCADASTRO').AsDate:=strTodate(mk_inicio.Text);
      end;


    3:begin// pesquisa por periodo
       Q_pesq_padrao.SQL.Add('WHERE A.CADASTRO BETWEEN :PINICIO AND :PFIM');
       Q_pesq_padrao.ParamByName('PINICIO').AsDate:=strTodate(mk_inicio.Text);
       Q_pesq_padrao.ParamByName('PFIM').AsDate:=strTodate(mk_fim.Text);
      end;

     4:begin
         Q_pesq_padrao.SQL.Add('ORDER BY A.ID_PRODUTO');

      end;

      5:begin
         Q_pesq_padrao.SQL.Add('WHERE A.ID_FORNECEDOR =:PID_FORNECEDOR'); // criamos o parametro
      Q_pesq_padrao.ParamByName('PID_FORNECEDOR').AsString:=ed_nome.Text;

      end;
 end;

// abre a query mostra o resultado
 Q_pesq_padrao.Open;

 // Mostra a quantidade de registros encontrados
    lb_Resultado.Caption:=' Total de Registros Localizados:   ' +
    IntTostr(Q_pesq_padrao.recordcount);

 // se nada for encontrado mostra a msg
 if Q_pesq_padrao.IsEmpty then
    begin
      Messagedlg('Registro não encontrado!',MtInformation,[mbOk],0);
    end
    else
    abort;

end;

procedure TFrm_Pesq_Produto.bt_transferirClick(Sender: TObject);
begin
  inherited;
  if Q_pesq_padrao.RecordCount > 0 then
        begin
          codigo:=Q_pesq_padraoID_PRODUTO.AsInteger;
        end
      else
        abort;
end;

procedure TFrm_Pesq_Produto.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   bt_transferir.Click;
end;

end.
