unit Frm.Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,Dm.Cadastro.Geral;

type
  TFrmProduto = class(TForm)
    DBNavigator1: TDBNavigator;
    gbCodigoProduto: TGroupBox;
    dbCodigoProduto: TDBEdit;
    gbDescricao: TGroupBox;
    dbDescricaoProdutos: TDBEdit;
    gbPreco: TGroupBox;
    dbPrecoProduto: TDBEdit;
    DBGrid1: TDBGrid;
    DsProduto: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto: TFrmProduto;

implementation

{$R *.dfm}

procedure TFrmProduto.FormCreate(Sender: TObject);
begin
  DmCadastroGeral.CdsProdutos.Open;
end;

procedure TFrmProduto.FormDestroy(Sender: TObject);
begin
  DmCadastroGeral.CdsProdutos.Close;
end;

end.
