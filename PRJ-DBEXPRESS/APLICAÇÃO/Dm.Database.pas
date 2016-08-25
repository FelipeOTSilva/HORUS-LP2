unit Dm.Database;

interface

uses
  System.SysUtils, System.Classes, Data.DbxFirebird, Data.DB, Data.SqlExpr;

type
  TDmDatabase = class(TDataModule)
    Conexao: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDatabase: TDmDatabase;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
