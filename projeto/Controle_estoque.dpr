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
  U_Produto in '..\Forms\U_Produto.pas' {Frm_Produto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
