unit FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Frm.Pais, Frm.Estado, Frm.Cidade,Frm.Produto, Frm.Cliente,Frm.Venda;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    Cadastros: TMenuItem;
    Localizao1: TMenuItem;
    Pas1: TMenuItem;
    Estado1: TMenuItem;
    Cidade1: TMenuItem;
    Geral1: TMenuItem;
    Produto1: TMenuItem;
    Cliente1: TMenuItem;
    Movimentao1: TMenuItem;
    RealizaodeVenda1: TMenuItem;
    procedure Pas1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure RealizaodeVenda1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Cidade1Click(Sender: TObject);
var
  vFrmCidade: TFrmCidade; //Variavel do tipo formul�rio do Pa�s
begin
  vFrmCidade := TFrmCidade.Create(nil); //Cria o formul�rio sem proprietarios
  try
      vFrmCidade.ShowModal; //Mostra o formul�rio na tela
  finally
      FreeAndNil(vFrmCidade);
  end;

end;

procedure TForm1.Cliente1Click(Sender: TObject);
var
  vFrmCliente: TFrmCliente; //Variavel do tipo formul�rio do Pa�s
begin
  vFrmCliente := TFrmCliente.Create(nil); //Cria o formul�rio sem proprietarios
  try
      vFrmCliente.ShowModal; //Mostra o formul�rio na tela
  finally
      FreeAndNil(vFrmCliente);
  end;

end;

procedure TForm1.Estado1Click(Sender: TObject);
var
  vFrmEstado: TFrmEstado; //Variavel do tipo formul�rio do Pa�s
begin
  vFrmEstado := TFrmEstado.Create(nil); //Cria o formul�rio sem proprietarios
  try
      vFrmEstado.ShowModal; //Mostra o formul�rio na tela
  finally
      FreeAndNil(vFrmEstado);
  end;

end;

procedure TForm1.Pas1Click(Sender: TObject);
var
  vFrmPais: TFrmPais; //Variavel do tipo formul�rio do Pa�s
begin
  vFrmPais := TFrmPais.Create(nil); //Cria o formul�rio sem proprietarios
  try
      vFrmPais.ShowModal; //Mostra o formul�rio na tela
  finally
      FreeAndNil(vFrmPais);
  end;

end;

procedure TForm1.Produto1Click(Sender: TObject);
var
  vFrmProduto: TFrmProduto; //Variavel do tipo formul�rio do Pa�s
begin
  vFrmProduto := TFrmProduto.Create(nil); //Cria o formul�rio sem proprietarios
  try
      vFrmProduto.ShowModal; //Mostra o formul�rio na tela
  finally
      FreeAndNil(vFrmProduto);
  end;

end;
procedure TForm1.RealizaodeVenda1Click(Sender: TObject);
var
  vFrmVenda: TFrmVenda; //Variavel do tipo formul�rio do Pa�s
begin
  vFrmVenda := TFrmVenda.Create(nil); //Cria o formul�rio sem proprietarios
  try
      vFrmVenda.ShowModal; //Mostra o formul�rio na tela
  finally
      FreeAndNil(vFrmVenda
      );
  end;

end;

end.
