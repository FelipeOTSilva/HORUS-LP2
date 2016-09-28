unit Dm.Cadastro.Geral;

interface

uses
  System.SysUtils, System.Classes,Dm.Database, Data.FMTBcd, Datasnap.Provider,
  Data.DB, Data.SqlExpr, Datasnap.DBClient,Dm.Cadastro.Localizacao;

type
  TDmCadastroGeral = class(TDataModule)
    SdsProdutos: TSQLDataSet;
    DspProdutos: TDataSetProvider;
    CdsProdutos: TClientDataSet;
    SdsProdutosPRO_CODIGO: TIntegerField;
    SdsProdutosPRO_DESCRICAO: TStringField;
    SdsProdutosPRO_PRECO: TFMTBCDField;
    CdsProdutosPRO_CODIGO: TIntegerField;
    CdsProdutosPRO_DESCRICAO: TStringField;
    CdsProdutosPRO_PRECO: TFMTBCDField;
    SdsCliente: TSQLDataSet;
    DspCliente: TDataSetProvider;
    CdsCliente: TClientDataSet;
    SdsClienteCLI_CODIGO: TIntegerField;
    SdsClienteCLI_NOME: TStringField;
    SdsClienteCLI_CPFCNPJ: TStringField;
    SdsClienteCLI_ENDERECO: TStringField;
    SdsClienteCLI_BAIRRO: TStringField;
    SdsClienteCLI_CEP: TStringField;
    SdsClienteCLI_TELEFONE: TStringField;
    SdsClienteCLI_EMAIL: TStringField;
    SdsClienteCLI_CID_CODIGO: TIntegerField;
    CdsClienteCLI_CODIGO: TIntegerField;
    CdsClienteCLI_NOME: TStringField;
    CdsClienteCLI_CPFCNPJ: TStringField;
    CdsClienteCLI_ENDERECO: TStringField;
    CdsClienteCLI_BAIRRO: TStringField;
    CdsClienteCLI_CEP: TStringField;
    CdsClienteCLI_TELEFONE: TStringField;
    CdsClienteCLI_EMAIL: TStringField;
    CdsClienteCLI_CID_CODIGO: TIntegerField;
    CdsClienteCID_NOME: TStringField;
    procedure CdsProdutosAfterDelete(DataSet: TDataSet);
    procedure CdsProdutosAfterPost(DataSet: TDataSet);
    procedure CdsClienteAfterPost(DataSet: TDataSet);
    procedure CdsClienteAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCadastroGeral: TDmCadastroGeral;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmCadastroGeral.CdsClienteAfterDelete(DataSet: TDataSet);
begin
  CdsCliente.ApplyUpdates(0);
end;

procedure TDmCadastroGeral.CdsClienteAfterPost(DataSet: TDataSet);
begin
  CdsCliente.ApplyUpdates(0);
end;

procedure TDmCadastroGeral.CdsProdutosAfterDelete(DataSet: TDataSet);
begin
  CdsProdutos.ApplyUpdates(0);
end;

procedure TDmCadastroGeral.CdsProdutosAfterPost(DataSet: TDataSet);
begin
  CdsProdutos.ApplyUpdates(0);
end;

end.
