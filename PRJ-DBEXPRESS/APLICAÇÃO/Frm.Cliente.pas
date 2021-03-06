unit Frm.Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,Dm.Cadastro.Geral,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmCliente = class(TForm)
    DBNavigator1: TDBNavigator;
    gbCodigoCliente: TGroupBox;
    dbCodigoCliente: TDBEdit;
    gbNome: TGroupBox;
    dbNomeCliente: TDBEdit;
    gbCPFCNPJ: TGroupBox;
    dbCPFCNPJCliente: TDBEdit;
    gbEnderecoCliente: TGroupBox;
    dbEndereco: TDBEdit;
    gbBairro: TGroupBox;
    dbBairro: TDBEdit;
    gbCEP: TGroupBox;
    dbCEP: TDBEdit;
    gbCidade: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    gbTelefoneCliente: TGroupBox;
    dbTelefoneCliente: TDBEdit;
    gbEmailCliente: TGroupBox;
    dbEmailCliente: TDBEdit;
    DBGrid1: TDBGrid;
    DsCliente: TDataSource;
    DsCidade: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.dfm}

procedure TFrmCliente.FormCreate(Sender: TObject);
begin
  DmCadastroGeral.CdsCliente.Open;
end;

procedure TFrmCliente.FormDestroy(Sender: TObject);
begin
  DmCadastroGeral.CdsCliente.Close;
end;

end.
