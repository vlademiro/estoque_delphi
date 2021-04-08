unit U_Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrm_Padrao = class(TForm)
    pnlTop: TPanel;
    pnlBottom: TPanel;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnPesquisar: TBitBtn;
    DBNavigator1: TDBNavigator;
    Q_Padrao: TFDQuery;
    ds_padrao: TDataSource;
    btnSair: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure TrataBotoes();
    procedure btnSairClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Padrao: TFrm_Padrao;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_Padrao.btnGravarClick(Sender: TObject);
begin

  if Q_padrao.State in [dsinsert] then

        begin

         Q_padrao.Post;

         Messagedlg('Registro salvo com sucesso!',mtInformation,[mbOk],0);

         tratabotoes;

        abort;

        end

     else

      // se estiver em edição

      if Q_padrao.State in [dsEdit] then

        begin

          Q_padrao.Refresh;

          tratabotoes;

          Messagedlg('Registro atualizado com sucesso!',mtInformation,[mbOk],0);



        end

      else

      abort;

  end;

procedure TFrm_Padrao.btnAtualizarClick(Sender: TObject);
begin
 // atualiza o registro
 try
 Tratabotoes;
 Q_padrao.Post;
 Messagedlg('Registro atualizado com sucesso!',mtInformation,[mbOk],0);
  Except
  ShowMessage('Erro na atualização do registro,verifique!');
 end;
end;

procedure TFrm_Padrao.btnCancelarClick(Sender: TObject);
begin
// cancela a ação
 Tratabotoes;
 Q_padrao.Cancel;
 Messagedlg('Ação cancelada pelo usuário!',mtInformation,[mbOk],0);
end;

procedure TFrm_Padrao.btnAlterarClick(Sender: TObject);
begin

Tratabotoes;
 if messagedlg('Deseja editar este registro?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      Q_padrao.edit;
    end
    else
    Tratabotoes;
    abort;

end;

procedure TFrm_Padrao.btnExcluirClick(Sender: TObject);
begin
Tratabotoes;
 if messagedlg('Deseja deletar este registro?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      Q_padrao.Delete;
      Messagedlg('Registro deletado com sucesso!',mtInformation,[mbOk],0);
      Tratabotoes;
    end
    else
    Tratabotoes;
    abort;
end;

procedure TFrm_Padrao.btnNovoClick(Sender: TObject);
begin
  TrataBotoes;
  q_padrao.Open();
  q_padrao.Append;
end;

procedure TFrm_Padrao.btnSairClick(Sender: TObject);
begin
  close();
end;

procedure TFrm_Padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then begin
    Key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;

end;

procedure TFrm_Padrao.TrataBotoes;
begin
  btnNovo.Enabled := not btnNovo.Enabled;
  btnExcluir.Enabled := not btnExcluir.Enabled;
  btnGravar.Enabled := not btnGravar.Enabled;
  btnAlterar.Enabled := not btnAlterar.Enabled;
end;

end.
