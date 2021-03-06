unit Dm.Cadastro.Localizacao;

interface

uses
  System.SysUtils, System.Classes, Dm.Database, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.Provider, Datasnap.DBClient;

type
  TDmCadastroLocalizacao = class(TDataModule)
    SdsPais: TSQLDataSet;
    DspPais: TDataSetProvider;
    dsCdsPais: TClientDataSet;
    intgrfldSdsPaisPAI_CODIGO: TIntegerField;
    strngfldSdsPaisPAI_NOME: TStringField;
    strngfldSdsPaisPAI_SIGLA: TStringField;
    intgrfldSdsPaisPAI_BACEN: TIntegerField;
    intgrfldCdsPaisPAI_CODIGO: TIntegerField;
    strngfldCdsPaisPAI_NOME: TStringField;
    strngfldCdsPaisPAI_SIGLA: TStringField;
    intgrfldCdsPaisPAI_BACEN: TIntegerField;
    SdsEstado: TSQLDataSet;
    DspEstado: TDataSetProvider;
    dsCdsEstado: TClientDataSet;
    intgrfldSdsEstadoEST_CODIGO: TIntegerField;
    strngfldSdsEstadoEST_NOME: TStringField;
    intgrfldSdsEstadoEST_PAI_CODIGO: TIntegerField;
    strngfldSdsEstadoEST_SIGLA: TStringField;
    intgrfldCdsEstadoEST_CODIGO: TIntegerField;
    strngfldCdsEstadoEST_NOME: TStringField;
    intgrfldCdsEstadoEST_PAI_CODIGO: TIntegerField;
    strngfldCdsEstadoEST_SIGLA: TStringField;
    SdsCidade: TSQLDataSet;
    DspCidade: TDataSetProvider;
    dsCdsCidade: TClientDataSet;
    SdsCidadeCID_CODIGO: TIntegerField;
    SdsCidadeCID_EST_CODIGO: TIntegerField;
    SdsCidadeCID_IBGE: TIntegerField;
    SdsCidadeCID_NOME: TStringField;
    dsCdsCidadeCID_CODIGO: TIntegerField;
    dsCdsCidadeCID_EST_CODIGO: TIntegerField;
    dsCdsCidadeCID_IBGE: TIntegerField;
    dsCdsCidadeCID_NOME: TStringField;
    dsCdsEstadoPAI_NOME: TStringField;
    dsCdsCidadeEST_NOME: TStringField;
    procedure dsCdsPaisAfterPost(DataSet: TDataSet);
    procedure dsCdsPaisAfterDelete(DataSet: TDataSet);
    procedure dsCdsEstadoAfterDelete(DataSet: TDataSet);
    procedure dsCdsEstadoAfterPost(DataSet: TDataSet);
    procedure dsCdsCidadeAfterDelete(DataSet: TDataSet);
    procedure dsCdsCidadeAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCadastroLocalizacao: TDmCadastroLocalizacao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmCadastroLocalizacao.dsCdsCidadeAfterDelete(DataSet: TDataSet);
begin
   dsCdsCidade.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.dsCdsCidadeAfterPost(DataSet: TDataSet);
begin
   dsCdsCidade.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.dsCdsEstadoAfterDelete(DataSet: TDataSet);
begin
  dsCdsEstado.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.dsCdsEstadoAfterPost(DataSet: TDataSet);
begin
  dsCdsEstado.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.dsCdsPaisAfterDelete(DataSet: TDataSet);
begin
  dsCdsPais.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.dsCdsPaisAfterPost(DataSet: TDataSet);
begin
  dsCdsPais.ApplyUpdates(0);
end;

end.
