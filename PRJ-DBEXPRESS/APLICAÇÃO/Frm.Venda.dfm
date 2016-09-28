object FrmVenda: TFrmVenda
  Left = 0
  Top = 0
  Caption = 'Realiza'#231#227'o de Venda'
  ClientHeight = 453
  ClientWidth = 755
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
    Width = 450
    Height = 41
    DataSource = DsVenda
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 47
    Width = 753
    Height = 233
    Caption = 'Mestre - Venda'
    TabOrder = 1
    object Label1: TLabel
      Left = 3
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label2: TLabel
      Left = 139
      Top = 24
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label3: TLabel
      Left = 299
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object dbCodigo: TDBEdit
      Left = 0
      Top = 40
      Width = 121
      Height = 21
      DataField = 'VEN_CODIGO'
      DataSource = DsVenda
      TabOrder = 0
    end
    object dbData: TDBEdit
      Left = 139
      Top = 40
      Width = 121
      Height = 21
      DataField = 'VEN_DATA'
      DataSource = DsVenda
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 3
      Top = 67
      Width = 747
      Height = 150
      DataSource = DsVenda
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'VEN_CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VEN_DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VEN_CLI_CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CLI'
          Width = 730
          Visible = True
        end>
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 299
    Top = 87
    Width = 448
    Height = 21
    DataField = 'VEN_CLI_CODIGO'
    DataSource = DsVenda
    KeyField = 'CLI_CODIGO'
    ListField = 'CLI_NOME'
    ListSource = DsCliente
    TabOrder = 2
  end
  object DsItem: TDataSource
    DataSet = DmMovimentacao.CdsItem
    Left = 472
    Top = 8
  end
  object DsVenda: TDataSource
    DataSet = DmMovimentacao.CdsVendas
    Left = 512
    Top = 8
  end
  object DsCliente: TDataSource
    DataSet = DmCadastroGeral.CdsCliente
    Left = 568
    Top = 8
  end
  object DsProduto: TDataSource
    DataSet = DmCadastroGeral.CdsProdutos
    Left = 624
    Top = 8
  end
end
