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
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 104
    Top = 32
    object Cadastros: TMenuItem
      Caption = 'Cadastros'
      object Localizao1: TMenuItem
        Caption = 'Localiza'#231#227'o'
        object Pas1: TMenuItem
          Caption = 'Pa'#237's'
          OnClick = Pas1Click
        end
        object Estado1: TMenuItem
          Caption = 'Estado'
          OnClick = Estado1Click
        end
        object Cidade1: TMenuItem
          Caption = 'Cidade'
          OnClick = Cidade1Click
        end
      end
      object Geral1: TMenuItem
        Caption = 'Geral'
        object Produto1: TMenuItem
          Caption = 'Produto'
          OnClick = Produto1Click
        end
        object Cliente1: TMenuItem
          Caption = 'Cliente'
          OnClick = Cliente1Click
        end
      end
    end
    object Movimentao1: TMenuItem
      Caption = 'Movimenta'#231#227'o'
      object RealizaodeVenda1: TMenuItem
        Caption = 'Realiza'#231#227'o de Venda'
        OnClick = RealizaodeVenda1Click
      end
    end
  end
end
