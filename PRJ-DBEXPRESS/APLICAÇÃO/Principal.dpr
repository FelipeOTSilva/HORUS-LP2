program Principal;

uses
  Vcl.Forms,
  Dm.Cadastro.Geral in 'Dm.Cadastro.Geral.pas' {DmCadastroGeral: TDataModule},
  Dm.Cadastro.Localizacao in 'Dm.Cadastro.Localizacao.pas' {DmCadastroLocalizacao: TDataModule},
  Dm.Database in 'Dm.Database.pas' {DmDatabase: TDataModule},
  Dm.Movimentacao in 'Dm.Movimentacao.pas' {DmMovimentacao: TDataModule},
  Frm.Cidade in 'Frm.Cidade.pas' {FrmCidade},
  Frm.Cliente in 'Frm.Cliente.pas' {FrmCliente},
  Frm.Estado in 'Frm.Estado.pas' {FrmEstado},
  Frm.Pais in 'Frm.Pais.pas' {FrmPais},
  Frm.Produto in 'Frm.Produto.pas' {FrmProduto},
  Frm.Venda in 'Frm.Venda.pas' {FrmVenda},
  FrmPrincipal in 'FrmPrincipal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDmDatabase, DmDatabase);
  Application.CreateForm(TDmCadastroLocalizacao, DmCadastroLocalizacao);
  Application.CreateForm(TDmCadastroGeral, DmCadastroGeral);
  Application.CreateForm(TDmCadastroLocalizacao, DmCadastroLocalizacao);
  Application.CreateForm(TDmDatabase, DmDatabase);
  Application.CreateForm(TDmMovimentacao, DmMovimentacao);
  Application.CreateForm(TFrmCidade, FrmCidade);
  Application.CreateForm(TFrmCliente, FrmCliente);
  Application.CreateForm(TFrmEstado, FrmEstado);
  Application.CreateForm(TFrmPais, FrmPais);
  Application.CreateForm(TFrmProduto, FrmProduto);
  Application.CreateForm(TFrmVenda, FrmVenda);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
