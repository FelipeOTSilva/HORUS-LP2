unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TForm1 = class(TForm)
    grp1: TGroupBox;
    dbnvgr1: TDBNavigator;
    grp2: TGroupBox;
    grpCodigo: TGroupBox;
    edt_Codigo: TEdit;
    grpDescricao: TGroupBox;
    edtDescricao: TEdit;
    grpUnidade: TGroupBox;
    edtUnidade: TEdit;
    grpData: TGroupBox;
    edtData: TEdit;
    grp3: TGroupBox;
    edtFornecedor: TEdit;
    grp4: TGroupBox;
    edtQuantidade: TEdit;
    grp5: TGroupBox;
    edtUnitario: TEdit;
    grpTotal: TGroupBox;
    edtTotal: TEdit;
    grp6: TGroupBox;
    grp7: TGroupBox;
    cbbCampo: TComboBox;
    grpAcao: TGroupBox;
    cbbAcao: TComboBox;
    grpValor: TGroupBox;
    edtValor: TEdit;
    btnExecutar: TButton;
    dbgrd1: TDBGrid;
    grpTotais: TGroupBox;
    lbl1: TLabel;
    dbedtQtdemEstoque: TDBEdit;
    lbl2: TLabel;
    dbedtValorEstoque: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
