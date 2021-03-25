program Controle_estoque;

uses
  Vcl.Forms,
  U_Principal in '..\Forms\U_Principal.pas' {Frm_Principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.Run;
end.
