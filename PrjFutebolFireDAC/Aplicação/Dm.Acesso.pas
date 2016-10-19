unit Dm.Acesso;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmAcesso = class(TDataModule)
    QryPais: TFDQuery;
    QryTatica: TFDQuery;
    QryTecnico: TFDQuery;
    QryJogador: TFDQuery;
    QryClube: TFDQuery;
    QryPaisPAI_CODIGO: TIntegerField;
    QryPaisPAI_NOME: TStringField;
    QryTaticaTAT_CODIGO: TIntegerField;
    QryTaticaTAT_DESCRICAO: TStringField;
    QryTaticaTAT_ESQUEMA: TStringField;
    QryTecnicoTEC_CODIGO: TIntegerField;
    QryTecnicoPAI_CODIGO: TIntegerField;
    QryTecnicoTEC_NOME: TStringField;
    QryJogadorCLB_CODIGO: TIntegerField;
    QryJogadorJOG_NUMERO: TIntegerField;
    QryJogadorPAI_CODIGO: TIntegerField;
    QryJogadorJOG_NOME: TStringField;
    QryJogadorJOG_POSICAO: TStringField;
    QryJogadorJOG_IDADE: TIntegerField;
    QryJogadorJOG_LADO: TStringField;
    QryJogadorJOG_TITULAR: TStringField;
    QryJogadorJOG_CARACTERISTICA: TStringField;
    QryClubeCLB_CODIGO: TIntegerField;
    QryClubeTAT_CODIGO: TIntegerField;
    QryClubeTEC_CODIGO: TIntegerField;
    QryClubePAI_CODIGO: TIntegerField;
    QryClubeCLB_NOME: TStringField;
    QryClubeCLB_ESTADIO: TStringField;
    QryClubeCLB_DTFUNDACAO: TDateField;
    DsMestreClube: TDataSource;
    QryClubeTAT_NOME: TStringField;
    QryClubeTEC_NOME: TStringField;
    QryClubePAI_NOME: TStringField;
    QryTecnicoPAI_NOME: TStringField;
    procedure QryJogadorAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmAcesso: TDmAcesso;

implementation

uses
  Dm.conexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmAcesso.QryJogadorAfterInsert(DataSet: TDataSet);
begin
  QryJogadorCLB_CODIGO.AsInteger := QryClubeCLB_CODIGO.AsInteger;
end;

end.
