unit Frm.Tecnico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Dm.Acesso, Vcl.ExtCtrls, Data.DB;

type
  TFrmTecnico = class(TForm)
    Label1: TLabel;
    dbedtCodigo: TDBEdit;
    Label2: TLabel;
    dbedtNome: TDBEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    dbcbbPais: TDBLookupComboBox;
    DsTecnico: TDataSource;
    DsPais: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTecnico: TFrmTecnico;

implementation

{$R *.dfm}

procedure TFrmTecnico.FormCreate(Sender: TObject);
begin
Dm.Acesso.DmAcesso.QryTecnico.Open;

end;

procedure TFrmTecnico.FormDestroy(Sender: TObject);
begin
  Dm.Acesso.DmAcesso.QryTecnico.Close;
end;

end.
