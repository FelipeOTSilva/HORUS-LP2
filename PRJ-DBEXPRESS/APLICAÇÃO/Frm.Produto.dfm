object FrmProduto: TFrmProduto
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produto'
  ClientHeight = 251
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 370
    Height = 33
    DataSource = DsProduto
    TabOrder = 0
  end
  object gbCodigoProduto: TGroupBox
    Left = 0
    Top = 40
    Width = 73
    Height = 49
    Caption = 'Codigo'
    TabOrder = 1
    object dbCodigoProduto: TDBEdit
      Left = 3
      Top = 24
      Width = 70
      Height = 21
      DataField = 'PRO_CODIGO'
      DataSource = DsProduto
      TabOrder = 0
    end
  end
  object gbDescricao: TGroupBox
    Left = 95
    Top = 40
    Width = 266
    Height = 49
    Caption = 'Descricao'
    TabOrder = 2
    object dbDescricaoProdutos: TDBEdit
      Left = 3
      Top = 25
      Width = 260
      Height = 21
      DataField = 'PRO_DESCRICAO'
      DataSource = DsProduto
      TabOrder = 0
    end
  end
  object gbPreco: TGroupBox
    Left = 376
    Top = 40
    Width = 185
    Height = 49
    Caption = '$$ Pre'#231'o'
    TabOrder = 3
    object dbPrecoProduto: TDBEdit
      Left = 3
      Top = 25
      Width = 121
      Height = 21
      DataField = 'PRO_PRECO'
      DataSource = DsProduto
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 91
    Width = 537
    Height = 158
    DataSource = DsProduto
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRO_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_PRECO'
        Visible = True
      end>
  end
  object DsProduto: TDataSource
    DataSet = DmCadastroGeral.CdsProdutos
    Left = 400
  end
end
