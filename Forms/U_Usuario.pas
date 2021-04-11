unit U_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Usuario = class(TFrm_Padrao)
    Q_PadraoID_USUARIO: TIntegerField;
    Q_PadraoNOME: TStringField;
    Q_PadraoSENHA: TStringField;
    Q_PadraoTIPO: TStringField;
    Q_PadraoCADASTRO: TDateField;
    Label1: TLabel;
    DB_ID_Usuario: TDBEdit;
    Label2: TLabel;
    DB_Nome: TDBEdit;
    Label3: TLabel;
    DB_Senha: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DB_Cadastro: TDBEdit;
    DB_Tipo: TDBComboBox;
    procedure btnNovoClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Usuario: TFrm_Usuario;

implementation

{$R *.dfm}

uses U_Pesq_Usuario;

procedure TFrm_Usuario.btnNovoClick(Sender: TObject);
begin
  inherited;

  DB_Cadastro.Text := DateToStr(now);
  DB_Nome.SetFocus;

end;

procedure TFrm_Usuario.btnPesquisarClick(Sender: TObject);
begin

  Frm_Pesq_Usuario := TFrm_Pesq_Usuario.Create(self);
  Frm_Pesq_Usuario.ShowModal;

  try
    if Frm_Pesq_Usuario.codigo > 0 then
      begin
        q_padrao.Open;
        Q_Padrao.Locate('ID_USUARIO',Frm_Pesq_Usuario.codigo,[]);
      end;

  finally
    Frm_Pesq_Usuario.Free;
    Frm_Pesq_Usuario := nil;
  end;


end;

end.
