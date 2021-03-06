unit Principal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, Data.DB, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Phys.IBBase, FireDAC.Comp.UI;

type
  TDataModule2 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    QryProprietario: TFDQuery;
    QryProprietarioPRP_CODIGO: TIntegerField;
    QryProprietarioPRP_NOME: TStringField;
    QryProprietarioPRP_ENDERECO: TStringField;
    QryVeiculo: TFDQuery;
    QryMultas: TFDQuery;
    DsMestreVeiculo: TDataSource;
    QryVeiculoVEI_CODIGO: TIntegerField;
    QryVeiculoVEI_PLACA: TStringField;
    QryVeiculoVEI_MARCA: TStringField;
    QryVeiculoVEI_MODELO: TStringField;
    QryVeiculoVEI_ANO: TIntegerField;
    QryVeiculoPRP_CODIGO: TIntegerField;
    QryVeiculoPRP_NOME: TStringField;
    QryMultasVEI_CODIGO: TIntegerField;
    QryMultasMLT_ITEM: TIntegerField;
    QryMultasMLT_DATA: TDateField;
    QryMultasMLT_HORA: TTimeField;
    QryMultasMLT_VALOR: TBCDField;
    QryMultasMLT_LOCAL: TStringField;
    procedure QryMultasAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule2.QryMultasAfterInsert(DataSet: TDataSet);
begin
     QryMultasVEI_CODIGO.AsInteger := QryVeiculoVEI_CODIGO.AsInteger;
end;

end.
