unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Data.DB, Datasnap.DBClient;

type
  TForm1 = class(TForm)
    grp1: TGroupBox;
    grp2: TGroupBox;
    grpCodigo: TGroupBox;
    grpDescricao: TGroupBox;
    grpUnidade: TGroupBox;
    grpData: TGroupBox;
    grp3: TGroupBox;
    grp4: TGroupBox;
    grp5: TGroupBox;
    grpTotal: TGroupBox;
    grp6: TGroupBox;
    grp7: TGroupBox;
    cbbCampo: TComboBox;
    grpAcao: TGroupBox;
    cbbAcao: TComboBox;
    grpValor: TGroupBox;
    edtValor: TEdit;
    btnExecutar: TButton;
    grpTotais: TGroupBox;
    lbl1: TLabel;
    dbedtQtdemEstoque: TDBEdit;
    lbl2: TLabel;
    dbedtValorEstoque: TDBEdit;
    ClientDataSet: TClientDataSet;
    DataSource: TDataSource;
    dbedtCodigo: TDBEdit;
    dbedtDescricao: TDBEdit;
    dbedtUnidade: TDBEdit;
    dbedtData: TDBEdit;
    dbedtFornecedor: TDBEdit;
    dbedtQuantidade: TDBEdit;
    dbedtUnitario: TDBEdit;
    dbedtTotal: TDBEdit;
    dbnvgr1: TDBNavigator;
    dbgrd1: TDBGrid;
    intgrfldClientDataSetCodigo: TIntegerField;
    strngfldClientDataSetDescricao: TStringField;
    strngfldClientDataSetUnidade: TStringField;
    strngfldClientDataSetFornecedor: TStringField;
    ClientDataSetData: TDateField;
    ClientDataSetQuantidade: TFloatField;
    crncyfldClientDataSetUnitario: TCurrencyField;
    crncyfldClientDataSetTotal: TCurrencyField;
    ClientDataSetEstoqueQtd: TAggregateField;
    ClientDataSetEstoqueVlr: TAggregateField;
    procedure ClientDataSetCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ClientDataSetBeforePost(DataSet: TDataSet);
    procedure cbbAcaoChange(Sender: TObject);
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnExecutarClick(Sender: TObject);
var
  vEncontrou: Boolean;
begin
// INDEXAR
  if cbbAcao.ItemIndex = 0 then
    begin
    // CAMPO CODIGO
    if cbbCampo.ItemIndex = 0 then
    ClientDataSet.IndexFieldNames := 'Codigo' ;

    //  CAMPO DESCRI��O
    if cbbCampo.ItemIndex = 1 then
    ClientDataSet.IndexFieldNames := 'Descricao' ;

    //  CAMPO UNIDADE
    if cbbCampo.ItemIndex = 2 then
    ClientDataSet.IndexFieldNames := 'Unidade' ;

    //  CAMPO FORNECEDOR
    if cbbCampo.ItemIndex = 3 then
    ClientDataSet.IndexFieldNames := 'Fornecedor' ;

    //  CAMPO DATA
    if cbbCampo.ItemIndex = 4 then
    ClientDataSet.IndexFieldNames := 'Data' ;

    //  CAMPO QUANTIDADE
    if cbbCampo.ItemIndex = 5 then
    ClientDataSet.IndexFieldNames := 'Quantidade' ;

    //  CAMPO UNITARIO
    if cbbCampo.ItemIndex = 6 then
    ClientDataSet.IndexFieldNames := 'Unitario' ;


  end;

//  LOCATE
if cbbAcao.ItemIndex = 1 then
begin

if edtValor.Text = '' then

  ShowMessage('Preencha o campo valor!')

 else
   // CAMPO CODIGO
  if cbbCampo.ItemIndex = 0 then
    begin
      if ClientDataSet.Locate('Codigo', edtValor.Text, [loCaseInsensitive, loPartialKey]) then
      begin
        ShowMessage('Registro encontrado e posicionado!');
      end
      else
        ShowMessage('Registro n�o encontrado!');

      end;

  // CAMPO DESCRICAO
  if cbbCampo.ItemIndex = 1 then
    begin
      if ClientDataSet.Locate('Descricao', edtValor.Text, [loCaseInsensitive, loPartialKey]) then
      begin
        ShowMessage('Registro encontrado e posicionado!');
      end
      else
        ShowMessage('Registro n�o encontrado!');

      end;

  // CAMPO UNIDADE
  if cbbCampo.ItemIndex = 2 then
    begin
      if ClientDataSet.Locate('Unidade', edtValor.Text, [loCaseInsensitive, loPartialKey]) then
      begin
        ShowMessage('Registro encontrado e posicionado!');
      end
      else
        ShowMessage('Registro n�o encontrado!');

      end;

  // CAMPO FORNECEDOR
  if cbbCampo.ItemIndex = 3 then
    begin
      if ClientDataSet.Locate('Fornecedor', edtValor.Text, [loCaseInsensitive, loPartialKey]) then
      begin
        ShowMessage('Registro encontrado e posicionado!');
      end
      else
        ShowMessage('Registro n�o encontrado!');

      end;

  // CAMPO DATA
  if cbbCampo.ItemIndex = 4 then
    begin
      if ClientDataSet.Locate('Data', edtValor.Text, [loCaseInsensitive, loPartialKey]) then
      begin
        ShowMessage('Registro encontrado e posicionado!');
      end
      else
        ShowMessage('Registro n�o encontrado!');

      end;

  // CAMPO QUANTIDADE
  if cbbCampo.ItemIndex = 5 then
    begin
      if ClientDataSet.Locate('Quantidade', edtValor.Text, [loCaseInsensitive, loPartialKey]) then
      begin
        ShowMessage('Registro encontrado e posicionado!');
      end
      else
        ShowMessage('Registro n�o encontrado!');

      end;

  // CAMPO UNITARIO
  if cbbCampo.ItemIndex = 6 then
    begin
      if ClientDataSet.Locate('Unitario', edtValor.Text, [loCaseInsensitive, loPartialKey]) then
      begin
        ShowMessage('Registro encontrado e posicionado!');
      end
      else
        ShowMessage('Registro n�o encontrado!');

   end;
end;

//  FINDKEY
 if cbbAcao.ItemIndex = 2 then

 begin
  if edtValor.Text = '' then
      ShowMessage('Preencha o campo Valor!');
  begin
    //  CODIGO
    if cbbCampo.ItemIndex = 0 then
    begin
       ClientDataSet.IndexFieldNames:= 'Codigo';
       ClientDataSet.FindKey([edtValor.Text]);
       if ClientDataSet.FindKey([edtValor.Text]) = True then
        ShowMessage('Valor encontrado e posicionado!')
       else
       ShowMessage('Valor n�o encontrado!');
    end;

    //  DESCRI��O
    if cbbCampo.ItemIndex = 1 then
    begin
       ClientDataSet.IndexFieldNames:= 'Descricao';
       ClientDataSet.FindKey([edtValor.Text]);
       if ClientDataSet.FindKey([edtValor.Text]) = True then
        ShowMessage('Valor encontrado e posicionado!')
       else
       ShowMessage('Valor n�o encontrado!');
    end;

    //  UNIDADE
    if cbbCampo.ItemIndex = 2 then
    begin
       ClientDataSet.IndexFieldNames:= 'Unidade';
       ClientDataSet.FindKey([edtValor.Text]);
       if ClientDataSet.FindKey([edtValor.Text]) = True then
        ShowMessage('Valor encontrado e posicionado!')
       else
       ShowMessage('Valor n�o encontrado!');
    end;

    //  FORNECEDOR
    if cbbCampo.ItemIndex = 3 then
    begin
       ClientDataSet.IndexFieldNames:= 'Fornecedor';
       ClientDataSet.FindKey([edtValor.Text]);
       if ClientDataSet.FindKey([edtValor.Text]) = True then
        ShowMessage('Valor encontrado e posicionado!')
       else
       ShowMessage('Valor n�o encontrado!');
    end;

    //  DATA
    if cbbCampo.ItemIndex = 4 then
    begin
       ClientDataSet.IndexFieldNames:= 'Data';
       ClientDataSet.FindKey([edtValor.Text]);
       if ClientDataSet.FindKey([edtValor.Text]) = True then
        ShowMessage('Valor encontrado e posicionado!')
       else
       ShowMessage('Valor n�o encontrado!');
    end;

    //  QUANTIDADE
    if cbbCampo.ItemIndex = 5 then
    begin
       ClientDataSet.IndexFieldNames:= 'Quantidade';
       ClientDataSet.FindKey([edtValor.Text]);
       if ClientDataSet.FindKey([edtValor.Text]) = True then
        ShowMessage('Valor encontrado e posicionado!')
       else
       ShowMessage('Valor n�o encontrado!');
    end;

    //  UNITARIO
    if cbbCampo.ItemIndex = 6 then
    begin
       ClientDataSet.IndexFieldNames:= 'Unitario';
       ClientDataSet.FindKey([edtValor.Text]);
       if ClientDataSet.FindKey([edtValor.Text]) = True then
        ShowMessage('Valor encontrado e posicionado!')
       else
       ShowMessage('Valor n�o encontrado!');
    end;
  end;

  end;

 //  LIMPAR
  if cbbAcao.ItemIndex = 3 then
   ClientDataSet.EmptyDataSet;

 // PERCORRER
  if cbbAcao.ItemIndex = 4 then
    if edtValor.Text = '' then
    begin
     ShowMessage('Preencher o campo valor!');
    begin
      if cbbCampo.ItemIndex = 0 then
      begin
        vEncontrou := False;
        ClientDataSet.DisableControls;
        try
          ClientDataSet.First;
          while not ClientDataSet.Eof do
          begin
            if (ClientDataSet.FieldByName('Codigo').Value = edtValor.Text)  then
            begin
              vEncontrou := True;
              ShowMessage('Registro Encontrado!');
              Break;

            end;
            ClientDataSet.Next;
          end;
        finally
           ClientDataSet.EnableControls;
          end;
          if (ClientDataSet.FieldByName('Codigo').Value = edtValor.Text) = False   then
            ShowMessage('Registro n�o encontrado!');

    end;
    end;
  end;

//  FILTRAR
  if cbbAcao.ItemIndex = 5 then
  begin
    if edtValor.Text = '' then
    ShowMessage('Preencha o campo valor!');

    //  CODIGO
    if cbbCampo.ItemIndex = 0 then
    begin
      ClientDataSet.Filtered := False;
      ClientDataSet.Filter :=  'Codigo =' +  edtValor.Text;
      ClientDataSet.Filtered := True;

    end;

    //  DESCRI��O
    if cbbCampo.ItemIndex = 1 then
    begin
      ClientDataSet.Filtered := False;
      ClientDataSet.Filter :=  'Descricao =' +  edtValor.Text;
      ClientDataSet.Filtered := True;

    end;

    //  UNIDADE
    if cbbCampo.ItemIndex = 2 then
    begin
      ClientDataSet.Filtered := False;
      ClientDataSet.Filter :=  'Unidade =' +  edtValor.Text;
      ClientDataSet.Filtered := True;

    end;

    //  FORNECEDOR
    if cbbCampo.ItemIndex = 3 then
    begin
      ClientDataSet.Filtered := False;
      ClientDataSet.Filter :=  'Fornecedor =' +  edtValor.Text;
      ClientDataSet.Filtered := True;

    end;


    //  DATA
    if cbbCampo.ItemIndex = 4 then
    begin
      ClientDataSet.Filtered := False;
      ClientDataSet.Filter :=  'Data =' +  edtValor.Text;
      ClientDataSet.Filtered := True;

    end;

    //  QUANTIDADE
    if cbbCampo.ItemIndex = 5 then
    begin
      ClientDataSet.Filtered := False;
      ClientDataSet.Filter := 'Quantidade =' +  edtValor.Text;
      ClientDataSet.Filtered := True;

    end;

    //  UNIDADE
    if cbbCampo.ItemIndex = 6 then
    begin
      ClientDataSet.Filtered := False;
      ClientDataSet.Filter :=  'Unidade =' +  edtValor.Text;
      ClientDataSet.Filtered := True;

    end;
  end;


//  LIMPAR FILTRO
  if cbbAcao.ItemIndex = 6 then
    ClientDataSet.Filtered := False;



 end;


procedure TForm1.cbbAcaoChange(Sender: TObject);
begin
if (cbbAcao.ItemIndex = 0) or (cbbAcao.ItemIndex = 3) or (cbbAcao.ItemIndex = 6)  then
  edtValor.Enabled := False
else
  edtValor.Enabled := True;



end;

procedure TForm1.ClientDataSetBeforePost(DataSet: TDataSet);
begin
//  CONDI��O CAMPOS EM BRANCO

  if (dbedtCodigo.Text = '') or (dbedtDescricao.Text = '')or (dbedtUnidade.Text = '')or (dbedtData.Text = '')or
    (dbedtFornecedor.Text = '') or (dbedtQuantidade.Text = '') or (dbedtUnitario.Text = '')or (dbedtTotal.Text = '') then

 ShowMessage('Preencha todos os campos!!');
end;

procedure TForm1.ClientDataSetCalcFields(DataSet: TDataSet);
begin
  if (not ClientDataSet.FieldByName('Unitario').IsNull) and
    (not ClientDataSet.FieldByName('Quantidade').IsNull) then
  begin
    ClientDataSet.FieldByName('Total').Value :=
    ClientDataSet.FieldByName('Unitario').Value * ClientDataSet.FieldByName('Quantidade').Value;
  end;
end;
procedure TForm1.FormCreate(Sender: TObject);
const
  cDataFile = 'Dados.xml';
begin
  ClientDataSet.FileName := ExtractFileName(Application.ExeName) + cDataFile;
  if FileExists(ClientDataSet.FileName) then
    ClientDataSet.Open
  else
    ClientDataSet.CreateDataSet;



end;

end.
