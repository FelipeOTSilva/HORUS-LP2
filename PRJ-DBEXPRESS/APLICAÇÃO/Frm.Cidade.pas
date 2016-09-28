unit Frm.Cidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Dm.Cadastro.Localizacao;

type
  TFrmCidade = class(TForm)
    DBNavigator1: TDBNavigator;
    gpCodigoCidade: TGroupBox;
    dbCodigoCidade: TDBEdit;
    gbNomeCidade: TGroupBox;
    dbNomeCidade: TDBEdit;
    gbIBGE: TGroupBox;
    dbIBGE: TDBEdit;
    gbEstado: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    DsCidade: TDataSource;
    DsEstado: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCidade: TFrmCidade;

implementation

{$R *.dfm}

procedure TFrmCidade.FormCreate(Sender: TObject);
begin
  DmCadastroLocalizacao.dsCdsCidade.Open;
end;

procedure TFrmCidade.FormDestroy(Sender: TObject);
begin
  DmCadastroLocalizacao.dsCdsCidade.Close;
end;

end.
