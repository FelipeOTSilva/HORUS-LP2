unit Frm.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Frm.CadastroPais, Frm.Tatica, Frm.Tecnico, Frm.ClubeJogador;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Pas1: TMenuItem;
    atica1: TMenuItem;
    ecnico1: TMenuItem;
    ClubeJogador1: TMenuItem;
    procedure Pas1Click(Sender: TObject);
    procedure atica1Click(Sender: TObject);
    procedure ecnico1Click(Sender: TObject);
    procedure ClubeJogador1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.atica1Click(Sender: TObject);
var
vFrmTatica: TFrmTatica;
begin
  vFrmTatica := TFrmTatica.Create(nil);
  try
    vFrmTatica.ShowModal;
  finally
    FreeAndNil (vFrmTatica);
  end;
end;

procedure TFrmPrincipal.ClubeJogador1Click(Sender: TObject);
var
vFrmClubeJogador: TFrmClubeJogador;
begin
  vFrmClubeJogador := TFrmClubeJogador.Create(nil);
  try
    vFrmClubeJogador.ShowModal;
  finally
    FreeAndNil (vFrmClubeJogador);
  end;
end;

procedure TFrmPrincipal.ecnico1Click(Sender: TObject);
var
vFrmTecnico: TFrmTecnico;
begin
  vFrmTecnico := TFrmTecnico.Create(nil);
  try
    vFrmTecnico.ShowModal;
  finally
    FreeAndNil (vFrmTecnico);
  end;
end;

procedure TFrmPrincipal.Pas1Click(Sender: TObject);
var
vFrmCadastroPais: TFrmCadastroPais;
begin
  vFrmCadastroPais := TFrmCadastroPais.Create(nil);
  try
    vFrmCadastroPais.ShowModal;
  finally
    FreeAndNil (vFrmCadastroPais);
  end;
end;
end.
