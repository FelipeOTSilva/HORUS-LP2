object FrmPais: TFrmPais
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pa'#237's'
  ClientHeight = 392
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 470
    Height = 41
    TabOrder = 0
  end
  object gbCodigo: TGroupBox
    Left = 8
    Top = 56
    Width = 137
    Height = 49
    Caption = 'Codigo'
    TabOrder = 1
    object dbCodigo: TDBEdit
      Left = 3
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
  end
  object gbNome: TGroupBox
    Left = 160
    Top = 56
    Width = 310
    Height = 49
    Caption = 'Nome'
    TabOrder = 2
    object dbNome: TDBEdit
      Left = 3
      Top = 25
      Width = 304
      Height = 21
      TabOrder = 0
    end
  end
  object DataSource1: TDataSource
    DataSet = DmCadastroLocalizacao.dsCdsPais
    Left = 240
    Top = 192
  end
end
