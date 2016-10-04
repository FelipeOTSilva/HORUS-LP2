unit Frm.Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Frm.Proprietarios, Vcl.Menus,Frm.VeiculoMultas;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Proprietrio1: TMenuItem;
    VeiculoeMulta1: TMenuItem;
    procedure Proprietrio1Click(Sender: TObject);
    procedure VeiculoeMulta1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Principal;

procedure TForm1.Proprietrio1Click(Sender: TObject);
var
vFrmProprietario: TFrmProprietario;
begin
  vFrmProprietario := TFrmProprietario.Create(nil);
  try
    vFrmProprietario.ShowModal;
  finally
    FreeAndNil (vFrmProprietario);
  end;
end;

procedure TForm1.VeiculoeMulta1Click(Sender: TObject);
var
vFrmVeiculoMultas: TFrmVeiculoMultas;
begin
  vFrmVeiculoMultas := TFrmVeiculoMultas.Create(nil);
  try
    vFrmVeiculoMultas.ShowModal;
  finally
    FreeAndNil (vFrmVeiculoMultas);
  end;
end;

end.
