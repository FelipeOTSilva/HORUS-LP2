program Principal;

uses
  Vcl.Forms,
  FrmPrincipal in 'FrmPrincipal.pas' {Form1},
  Dm.Database in 'Dm.Database.pas' {DmDatabase: TDataModule},
  Dm.Cadastro.Localizacao in 'Dm.Cadastro.Localizacao.pas' {DmCadastroLocalizacao: TDataModule},
  Frm.Pais in 'Frm.Pais.pas' {FrmPais};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDmDatabase, DmDatabase);
  Application.CreateForm(TDmCadastroLocalizacao, DmCadastroLocalizacao);
  Application.CreateForm(TFrmPais, FrmPais);
  Application.Run;
end.
