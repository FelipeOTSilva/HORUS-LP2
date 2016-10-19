unit Frm.CadastroPais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Dm.Acesso, Vcl.ExtCtrls;

type
  TFrmCadastroPais = class(TForm)
    Label1: TLabel;
    dbedtCodigo: TDBEdit;
    Label2: TLabel;
    dbedtPais: TDBEdit;
    DBGrid1: TDBGrid;
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
  FrmCadastroPais: TFrmCadastroPais;

implementation

{$R *.dfm}

procedure TFrmCadastroPais.FormCreate(Sender: TObject);
begin
  Dm.Acesso.DmAcesso.QryPais.Open;
end;

procedure TFrmCadastroPais.FormDestroy(Sender: TObject);
begin
  Dm.Acesso.DmAcesso.QryPais.Close;
end;

end.
