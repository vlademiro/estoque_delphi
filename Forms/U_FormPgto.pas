unit U_FormPgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_FormPgto = class(TFrm_Padrao)
    Q_PadraoID_FORMA_PGTO: TFDAutoIncField;
    Q_PadraoDESCRICAO: TStringField;
    Q_PadraoCADASTRO: TDateField;
    Label1: TLabel;
    DB_ID_FORMA_PGTO: TDBEdit;
    Label2: TLabel;
    DB_DESCRICAO: TDBEdit;
    Label3: TLabel;
    DB_CADASTRO: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_FormPgto: TFrm_FormPgto;

implementation

{$R *.dfm}

procedure TFrm_FormPgto.btnNovoClick(Sender: TObject);
begin
  inherited;
  DB_CADASTRO.Text := dateToStr( now );
  DB_DESCRICAO.SetFocus;
end;

end.
