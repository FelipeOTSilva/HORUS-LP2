unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB, Datasnap.DBClient;

type
  TForm1 = class(TForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    edt_ValorFiltro: TEdit;
    btn_AdicionarFiltro: TButton;
    btn_RemoverFiltro: TButton;
    grp2: TGroupBox;
    dbnvgr1: TDBNavigator;
    dbgrd1: TDBGrid;
    grp3: TGroupBox;
    btn_LimparDados: TButton;
    btn_IndexarID: TButton;
    btn_IndexarNome: TButton;
    grp4: TGroupBox;
    edt_Percorrer: TEdit;
    btn_Percorrer: TButton;
    grp5: TGroupBox;
    edt_Locate: TEdit;
    btn_Locate: TButton;
    grp6: TGroupBox;
    edt_FindKey: TEdit;
    btn_FindKey: TButton;
    lbl2: TLabel;
    dbedt_Total: TDBEdit;
    dsCdsProdutos: TClientDataSet;
    dsProdutos: TDataSource;
    intgrfldCdsProdutosId: TIntegerField;
    strngfldCdsProdutosNome: TStringField;
    crncyfldCdsProdutosValor: TCurrencyField;
    dsCdsProdutosQuantidade: TFloatField;
    crncyfldCdsProdutosTotal: TCurrencyField;
    dsCdsProdutosProdutosTotal: TAggregateField;
    procedure dsCdsProdutosCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btn_LimparDadosClick(Sender: TObject);
    procedure btn_IndexarIDClick(Sender: TObject);
    procedure btn_IndexarNomeClick(Sender: TObject);
    procedure btn_PercorrerClick(Sender: TObject);
    procedure btn_LocateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_IndexarIDClick(Sender: TObject);
begin
dsCdsProdutos.IndexFieldNames := 'Id';
end;

procedure TForm1.btn_IndexarNomeClick(Sender: TObject);
begin
dsCdsProdutos.IndexFieldNames := 'Nome';
end;

procedure TForm1.btn_LimparDadosClick(Sender: TObject);
begin
dsCdsProdutos.EmptyDataSet;
end;

procedure TForm1.btn_LocateClick(Sender: TObject);
begin
  if dsCdsProdutos.Locate('Nome', edt_Locate.Text, [loCaseInsensitive, loPartialKey]) then
  begin
    ShowMessage('Encontrado e registro posicionado');
  end
  else
    ShowMessage('N�o encontrado!');

end;

procedure TForm1.btn_PercorrerClick(Sender: TObject);
var
  vEncontrou: Boolean;

begin
  vEncontrou := False;
  dsCdsProdutos.DisableControls;
  try
    dsCdsProdutos.First;
    while not dsCdsProdutos.Eof do
      begin
        if  (dsCdsProdutos.FieldByName('Id').AsString = edt_Percorrer.Text) then
        begin
          vEncontrou := True;
          Break;
        end;
        dsCdsProdutos.Next;
      end;

  finally
    dsCdsProdutos.EnableControls;

  end;
end;

procedure TForm1.dsCdsProdutosCalcFields(DataSet: TDataSet);
begin
  if (not dsCdsProdutos.FieldByName('Valor').IsNull) and
    (not dsCdsProdutos.FieldByName('Quantidade').IsNull) then
    begin
      dsCdsProdutos.FieldByName('Total').Value :=
        dsCdsProdutos.FieldByName('Valor').Value * dsCdsProdutos.FieldByName('Quantidade').Value;

    end;

end;

procedure TForm1.FormCreate(Sender: TObject);
const
  cDataFile = 'Dados.xml';
begin
  dsCdsProdutos.FileName := ExtractFilePath(Application.ExeName)+ cDataFile;
  if FileExists(dsCdsProdutos.FileName) then
    dsCdsProdutos.Open
  else
    dsCdsProdutos.CreateDataSet;

end;

end.
