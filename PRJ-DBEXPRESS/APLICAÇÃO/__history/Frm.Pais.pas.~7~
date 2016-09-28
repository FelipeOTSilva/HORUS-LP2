unit Frm.Pais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Dm.Cadastro.Localizacao, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmPais = class(TForm)
    DsPais: TDataSource;
    DBNavigator1: TDBNavigator;
    gbCodigo: TGroupBox;
    dbCodigo: TDBEdit;
    gbNome: TGroupBox;
    dbNome: TDBEdit;
    gbSigla: TGroupBox;
    dbSigla: TDBEdit;
    gpBacen: TGroupBox;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPais: TFrmPais;

implementation

{$R *.dfm}

procedure TFrmPais.FormCreate(Sender: TObject);
begin
  DmCadastroLocalizacao.dsCdsPais.Open;
end;

procedure TFrmPais.FormDestroy(Sender: TObject);
begin
  DmCadastroLocalizacao.dsCdsPais.Close;
end;

end.
