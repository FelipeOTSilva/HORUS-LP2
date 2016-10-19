unit Frm.Tatica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Dm.Acesso, Vcl.ExtCtrls;

type
  TFrmTatica = class(TForm)
    Label1: TLabel;
    dbedtCodigo: TDBEdit;
    Label2: TLabel;
    dbedtDescricao: TDBEdit;
    Label3: TLabel;
    dbedtEsquema: TDBEdit;
    DBGrid1: TDBGrid;
    DsTatica: TDataSource;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTatica: TFrmTatica;

implementation

{$R *.dfm}

procedure TFrmTatica.FormCreate(Sender: TObject);
begin
  Dm.Acesso.DmAcesso.QryTatica.Open;
end;

procedure TFrmTatica.FormDestroy(Sender: TObject);
begin
  Dm.Acesso.DmAcesso.QryTatica.Close;
end;

end.
