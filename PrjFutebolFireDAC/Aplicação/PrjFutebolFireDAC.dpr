program PrjFutebolFireDAC;

uses
  Vcl.Forms,
  Dm.Acesso in 'Dm.Acesso.pas' {DmAcesso: TDataModule},
  Dm.Conexao in 'Dm.Conexao.pas' {DmConexao: TDataModule},
  Frm.CadastroPais in 'Frm.CadastroPais.pas' {FrmCadastroPais},
  Frm.ClubeJogador in 'Frm.ClubeJogador.pas' {FrmClubeJogador},
  Frm.Principal in 'Frm.Principal.pas' {FrmPrincipal},
  Frm.Tatica in 'Frm.Tatica.pas' {FrmTatica},
  Frm.Tecnico in 'Frm.Tecnico.pas' {FrmTecnico};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmAcesso, DmAcesso);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
