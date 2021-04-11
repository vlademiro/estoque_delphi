program Controle_estoque;

uses
  Vcl.Forms,
  U_Principal in '..\Forms\U_Principal.pas' {Frm_Principal},
  U_DM in '..\Forms\U_DM.pas' {DM: TDataModule},
  U_Padrao in '..\Forms\U_Padrao.pas' {Frm_Padrao},
  U_Usuario in '..\Forms\U_Usuario.pas' {Frm_Usuario},
  U_Empresa in '..\Forms\U_Empresa.pas' {Frm_Empresa},
  U_Cliente in '..\Forms\U_Cliente.pas' {Frm_Cliente},
  U_Fornecedor in '..\Forms\U_Fornecedor.pas' {Frm_Fornecedor},
  U_Produto in '..\Forms\U_Produto.pas' {Frm_Produto},
  U_FormPgto in '..\Forms\U_FormPgto.pas' {Frm_FormPgto},
  U_Form_Pesquisa_Padrao in '..\Forms\U_Form_Pesquisa_Padrao.pas' {Frm_Pesquisa_Padrao},
  U_Pesq_Usuario in '..\Forms\U_Pesq_Usuario.pas' {Frm_Pesq_Usuario},
  U_Pesq_Cliente in '..\Forms\U_Pesq_Cliente.pas' {Frm_Pesq_Cliente},
  U_Pesq_Fornecedor in '..\Forms\U_Pesq_Fornecedor.pas' {Frm_Pesq_Fornecedor},
  U_Pesq_Produto in '..\Forms\U_Pesq_Produto.pas' {Frm_Pesq_Produto},
  U_Movimento_Padrao in '..\Forms\U_Movimento_Padrao.pas' {Frm_Padrao_Movimento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TFrm_Pesq_Produto, Frm_Pesq_Produto);
  Application.CreateForm(TFrm_Padrao_Movimento, Frm_Padrao_Movimento);
  Application.Run;
end.
