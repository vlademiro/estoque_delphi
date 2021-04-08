unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus;

type
  TFrm_Principal = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    stbPrincipal: TStatusBar;
    tmrPrincipal: TTimer;
    mnuPrincipal: TMainMenu;
    Cadastro1: TMenuItem;
    Usurio1: TMenuItem;
    Empresa1: TMenuItem;
    Cliente1: TMenuItem;
    Fornecedor1: TMenuItem;
    Produto1: TMenuItem;
    Formadepagamento1: TMenuItem;
    Movimento1: TMenuItem;
    Compra1: TMenuItem;
    Venda1: TMenuItem;
    Relatrio1: TMenuItem;
    Listadeusurios1: TMenuItem;
    Listadefornecedores1: TMenuItem;
    Listadeprodutos1: TMenuItem;
    Listadecompras1: TMenuItem;
    Listadevendas1: TMenuItem;
    Sobreosistema1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure tmrPrincipalTimer(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Abre_Tela_Usuario;
    procedure Usurio1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Abre_Tela_Empresa;
    procedure Empresa1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Abre_Tela_Cliente;
    procedure Abre_Tela_Fornecedor;
    procedure SpeedButton4Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses U_Usuario, U_Empresa, U_Cliente, U_Fornecedor;

procedure TFrm_Principal.SpeedButton10Click(Sender: TObject);
begin
  Close();
end;

procedure TFrm_Principal.SpeedButton1Click(Sender: TObject);
begin
  Abre_Tela_Usuario;
end;

procedure TFrm_Principal.SpeedButton2Click(Sender: TObject);
begin
     Abre_Tela_Empresa();
end;

procedure TFrm_Principal.SpeedButton3Click(Sender: TObject);
begin
    Abre_Tela_Cliente;
end;

procedure TFrm_Principal.SpeedButton4Click(Sender: TObject);
begin
  Abre_Tela_Fornecedor;
end;

procedure TFrm_Principal.tmrPrincipalTimer(Sender: TObject);
begin
    stbPrincipal.Panels[0].Text := DateToStr(now);
    stbPrincipal.Panels[1].Text := TimeToStr(now);
    stbPrincipal.Panels[2].Text := 'Bem-vindo ao sistema';
end;

procedure TFrm_Principal.Usurio1Click(Sender: TObject);
begin
    Abre_Tela_Usuario;
end;

procedure TFrm_Principal.Abre_Tela_Usuario;
begin
  frm_Usuario:=TFrm_Usuario.Create(self);
  frm_usuario.ShowModal;
  try

  finally
    frm_usuario.Free;
    frm_usuario := nil;
  end;
end;

procedure TFrm_Principal.Empresa1Click(Sender: TObject);
begin
      Abre_Tela_Empresa;
end;

procedure TFrm_Principal.Fornecedor1Click(Sender: TObject);
begin
  Abre_Tela_Fornecedor;
end;

procedure TFrm_Principal.Abre_Tela_Empresa;
begin
  frm_Empresa:=TFrm_Empresa.Create(self);
  frm_Empresa.ShowModal;
  try

  finally
    frm_empresa.Free;
    frm_empresa := nil;
  end;
end;

procedure TFrm_Principal.Abre_Tela_Cliente;
begin
  frm_Cliente:=TFrm_Cliente.Create(self);
  frm_Cliente.ShowModal;
  try

  finally
    frm_Cliente.Free;
    frm_Cliente := nil;
  end;
end;


procedure TFrm_Principal.Abre_Tela_Fornecedor;
begin
  frm_Fornecedor:=TFrm_Fornecedor.Create(self);
  frm_Fornecedor.ShowModal;
  try

  finally
    frm_Fornecedor.Free;
    frm_Fornecedor := nil;
  end;
end;


end.
