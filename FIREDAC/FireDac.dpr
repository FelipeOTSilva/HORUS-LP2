program FireDac;

uses
  Vcl.Forms,
  Frm.Menu in 'Frm.Menu.pas' {Form1},
  Principal in 'Principal.pas' {DataModule2: TDataModule},
  Frm.Proprietarios in 'Frm.Proprietarios.pas' {FrmProprietario},
  Frm.VeiculoMultas in 'Frm.VeiculoMultas.pas' {FrmVeiculoMultas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
