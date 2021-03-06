unit Frm.VeiculoMultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Principal, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB;

type
  TFrmVeiculoMultas = class(TForm)
    DBNavigator1: TDBNavigator;
    Codigo: TLabel;
    dbedtCodigo: TDBEdit;
    Label1: TLabel;
    dbedtPlaca: TDBEdit;
    Marca: TLabel;
    dbedtMarca: TDBEdit;
    Label2: TLabel;
    dbedtModelo: TDBEdit;
    Label3: TLabel;
    dbedtAno: TDBEdit;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator2: TDBNavigator;
    Label5: TLabel;
    dbedtItem: TDBEdit;
    Label6: TLabel;
    dbedtData: TDBEdit;
    Label7: TLabel;
    dbedtHora: TDBEdit;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DsVeiculo: TDataSource;
    DsMultas: TDataSource;
    DsProprietario: TDataSource;
    dbedtLocal: TDBEdit;
    DBGrid2: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVeiculoMultas: TFrmVeiculoMultas;

implementation

{$R *.dfm}

procedure TFrmVeiculoMultas.FormCreate(Sender: TObject);
begin
  Principal.DataModule2.QryProprietario.Open;
  Principal.DataModule2.QryVeiculo.Open;
  Principal.DataModule2.QryMultas.Open;
end;

procedure TFrmVeiculoMultas.FormDestroy(Sender: TObject);
begin
  Principal.DataModule2.QryProprietario.Close;
  Principal.DataModule2.QryVeiculo.Close;
  Principal.DataModule2.QryMultas.Close;
end;

end.
