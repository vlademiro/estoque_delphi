unit U_Pesq_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_Pesquisa_Padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_Pesq_Usuario = class(TFrm_Pesquisa_Padrao)
    procedure bt_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pesq_Usuario: TFrm_Pesq_Usuario;

implementation

{$R *.dfm}

procedure TFrm_Pesq_Usuario.bt_pesquisarClick(Sender: TObject);
begin
 Q_pesq_padrao.Close; // fecha
 Q_pesq_padrao.SQL.Add(''); // limpa
 Q_pesq_padrao.Params.Clear;  //limpamos os parametros
 Q_pesq_padrao.SQL.Clear;  // lima o sql
 Q_pesq_padrao.SQL.Add('SELECT ID_USUARIO,NOME,TIPO,CADASTRO FROM USUARIO'); // add sql

 case cb_chave_pesquisa.ItemIndex of
   0:begin// pesquisa por codigo
      Q_pesq_padrao.SQL.Add('WHERE ID_USUARIO =:PID_USUARIO'); // criamos o parametro
      Q_pesq_padrao.ParamByName('PID_USUARIO').AsString:=ed_nome.Text; // aponta para o campo do parametro

   end;

    1:begin // pesquisa por nome
      Q_pesq_padrao.SQL.Add('WHERE NOME LIKE :PNOME'); // criamos o parametro
      Q_pesq_padrao.ParamByName('PNOME').AsString:= '%' +ed_nome.Text + '%'; // aponta para o campo do parametro

   end;

    2:begin// pesquisa por dadta
       Q_pesq_padrao.SQL.Add('WHERE CADASTRO =:PCADASTRO');
       Q_pesq_padrao.ParamByName('PCADASTRO').AsDate:=strTodate(mk_inicio.Text);
      end;


    3:begin// pesquisa por periodo
       Q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
       Q_pesq_padrao.ParamByName('PINICIO').AsDate:=strTodate(mk_inicio.Text);
       Q_pesq_padrao.ParamByName('PFIM').AsDate:=strTodate(mk_fim.Text);
      end;

     4:begin
         Q_pesq_padrao.SQL.Add('ORDER BY ID_USUARIO');

      end;
 end;

// abre a query mostra o resultado
 Q_pesq_padrao.Open;

    // Mostra a quantidade de registros encontrados
    //lb_Resultado.Caption:=' Total de Registros Localizados:   ' +
    //IntTostr(Q_pesq_padrao.recordcount);

 // se nada for encontrado mostra a msg
 if Q_pesq_padrao.IsEmpty then
    begin
      Messagedlg('Registro não encontrado!',MtInformation,[mbOk],0);
    end
    else
    abort;


end;

end.
