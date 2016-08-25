unit Frm.Pais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Dm.Cadastro.Localizacao, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB;

type
  TFrmPais = class(TForm)
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    gbCodigo: TGroupBox;
    dbCodigo: TDBEdit;
    gbNome: TGroupBox;
    dbNome: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPais: TFrmPais;

implementation

{$R *.dfm}

end.
