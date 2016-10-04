unit Frm.Proprietarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Principal, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB;

type
  TFrmProprietario = class(TForm)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    dbedtCodigo: TDBEdit;
    Label2: TLabel;
    dbedtNome: TDBEdit;
    Label3: TLabel;
    dbedtEndereco: TDBEdit;
    DsProprietario: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProprietario: TFrmProprietario;

implementation

{$R *.dfm}

procedure TFrmProprietario.FormCreate(Sender: TObject);
begin
Principal.DataModule2.QryProprietario.Open;
end;

procedure TFrmProprietario.FormDestroy(Sender: TObject);
begin
Principal.DataModule2.QryProprietario.Close;
end;

end.
