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
    btnAtualizar: TBitBtn;
    btnPesquisar: TBitBtn;
    DBNavigator1: TDBNavigator;
    Q_Padrao: TFDQuery;
    ds_padrao: TDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure TrataBotoes();
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
  TrataBotoes;
  Q_Padrao.Post;
  messagedlg('Registro salvo com sucesso.',mtInformation,[mbOk],0);
end;

procedure TFrm_Padrao.btnCancelarClick(Sender: TObject);
begin
  TrataBotoes;
  Q_Padrao.Cancel;
end;

procedure TFrm_Padrao.btnAlterarClick(Sender: TObject);
begin
    TrataBotoes;
    Q_Padrao.Edit;
    TrataBotoes;
end;

procedure TFrm_Padrao.btnExcluirClick(Sender: TObject);
begin
  TrataBotoes;
  if messagedlg('Deseja excluir este registro ?',mtConfirmation,[mbOK,mbNo],0)=mrOk  then
    begin
      Q_Padrao.Delete;
      TrataBotoes;
    end
  else
    begin
      TrataBotoes;
      abort;
    end;

end;

procedure TFrm_Padrao.btnNovoClick(Sender: TObject);
begin
  TrataBotoes;
  q_padrao.Append;
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
  btnAtualizar.Enabled := not btnAtualizar.Enabled;
  btnAlterar.Enabled := not btnAlterar.Enabled;
end;

end.
