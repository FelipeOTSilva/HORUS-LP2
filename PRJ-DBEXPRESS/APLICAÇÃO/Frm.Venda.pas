unit Frm.Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Dm.Movimentacao,Dm.Cadastro.Geral,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB;

type
  TFrmVenda = class(TForm)
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dbCodigo: TDBEdit;
    Label2: TLabel;
    dbData: TDBEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DsItem: TDataSource;
    DsVenda: TDataSource;
    DsCliente: TDataSource;
    DsProduto: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVenda: TFrmVenda;

implementation

{$R *.dfm}

procedure TFrmVenda.FormCreate(Sender: TObject);
begin
  DmMovimentacao.CdsVendas.Open;
  DmCadastroGeral.CdsCliente.Open;
  DmMovimentacao.CdsItem.Open;
  DmCadastroGeral.CdsProdutos.Open;
end;

procedure TFrmVenda.FormDestroy(Sender: TObject);
begin
    DmMovimentacao.CdsVendas.Close;
    DmCadastroGeral.CdsCliente.Close;
    DmMovimentacao.CdsItem.Close;
    DmCadastroGeral.CdsProdutos.Close;
end;

end.
