object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 64
    Top = 8
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Proprietrio1: TMenuItem
        Caption = 'Propriet'#225'rio'
        OnClick = Proprietrio1Click
      end
      object VeiculoeMulta1: TMenuItem
        Caption = 'Veiculo e Multa'
        OnClick = VeiculoeMulta1Click
      end
    end
  end
end
