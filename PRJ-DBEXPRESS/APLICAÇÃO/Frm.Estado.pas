unit Frm.Estado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Dm.Cadastro.Localizacao;

type
  TFrmEstado = class(TForm)
    gpCodigoEstado: TGroupBox;
    dbCodigoEstado: TDBEdit;
    gpNomeEstado: TGroupBox;
    DBEdit1: TDBEdit;
    gpSigla: TGroupBox;
    dbSiglaEstado: TDBEdit;
    gpPais: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    DsEstado: TDataSource;
    DsPais: TDataSource;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstado: TFrmEstado;

implementation

{$R *.dfm}

procedure TFrmEstado.FormCreate(Sender: TObject);
begin
  DmCadastroLocalizacao.dsCdsEstado.Open;
end;

procedure TFrmEstado.FormDestroy(Sender: TObject);
begin
  DmCadastroLocalizacao.dsCdsEstado.Close;
end;

end.
