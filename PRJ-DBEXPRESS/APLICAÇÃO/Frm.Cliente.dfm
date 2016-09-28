object FrmCliente: TFrmCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cliente'
  ClientHeight = 442
  ClientWidth = 786
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
    Width = 500
    Height = 49
    DataSource = DsCliente
    TabOrder = 0
  end
  object gbCodigoCliente: TGroupBox
    Left = 0
    Top = 55
    Width = 121
    Height = 42
    Caption = 'Codigo'
    TabOrder = 1
    object dbCodigoCliente: TDBEdit
      Left = 10
      Top = 18
      Width = 108
      Height = 21
      DataField = 'CLI_CODIGO'
      DataSource = DsCliente
      TabOrder = 0
    end
  end
  object gbNome: TGroupBox
    Left = 124
    Top = 55
    Width = 437
    Height = 42
    Caption = 'Nome'
    TabOrder = 2
    object dbNomeCliente: TDBEdit
      Left = 3
      Top = 18
      Width = 431
      Height = 21
      DataField = 'CLI_NOME'
      DataSource = DsCliente
      TabOrder = 0
    end
  end
  object gbCPFCNPJ: TGroupBox
    Left = 567
    Top = 55
    Width = 185
    Height = 42
    Caption = 'CPF/CNPJ'
    TabOrder = 3
    object dbCPFCNPJCliente: TDBEdit
      Left = 3
      Top = 18
      Width = 179
      Height = 21
      DataField = 'CLI_CPFCNPJ'
      DataSource = DsCliente
      TabOrder = 0
    end
  end
  object gbEnderecoCliente: TGroupBox
    Left = 0
    Top = 100
    Width = 465
    Height = 45
    Caption = 'Endere'#231'o'
    TabOrder = 4
    object dbEndereco: TDBEdit
      Left = 10
      Top = 21
      Width = 452
      Height = 21
      DataField = 'CLI_ENDERECO'
      DataSource = DsCliente
      TabOrder = 0
    end
  end
  object gbBairro: TGroupBox
    Left = 468
    Top = 100
    Width = 149
    Height = 45
    Caption = 'Bairro'
    TabOrder = 5
    object dbBairro: TDBEdit
      Left = 3
      Top = 21
      Width = 142
      Height = 21
      DataField = 'CLI_BAIRRO'
      DataSource = DsCliente
      TabOrder = 0
    end
  end
  object gbCEP: TGroupBox
    Left = 623
    Top = 100
    Width = 185
    Height = 45
    Caption = 'CEP'
    TabOrder = 6
    object dbCEP: TDBEdit
      Left = 3
      Top = 21
      Width = 150
      Height = 21
      DataField = 'CLI_BAIRRO'
      DataSource = DsCliente
      TabOrder = 0
    end
  end
  object gbCidade: TGroupBox
    Left = 0
    Top = 151
    Width = 778
    Height = 42
    Caption = 'Cidade'
    TabOrder = 7
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 10
      Top = 18
      Width = 765
      Height = 21
      DataField = 'CLI_CID_CODIGO'
      DataSource = DsCliente
      KeyField = 'CID_CODIGO'
      ListField = 'CID_NOME'
      ListSource = DsCidade
      TabOrder = 0
    end
  end
  object gbTelefoneCliente: TGroupBox
    Left = 0
    Top = 196
    Width = 121
    Height = 45
    Caption = 'Telefone'
    TabOrder = 8
    object dbTelefoneCliente: TDBEdit
      Left = 10
      Top = 21
      Width = 108
      Height = 21
      TabOrder = 0
    end
  end
  object gbEmailCliente: TGroupBox
    Left = 124
    Top = 196
    Width = 654
    Height = 45
    Caption = 'Email'
    TabOrder = 9
    object dbEmailCliente: TDBEdit
      Left = 3
      Top = 21
      Width = 648
      Height = 21
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 244
    Width = 793
    Height = 197
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DsCliente: TDataSource
    DataSet = DmCadastroGeral.CdsCliente
    Left = 552
    Top = 8
  end
  object DsCidade: TDataSource
    DataSet = DmCadastroLocalizacao.dsCdsCidade
    Left = 608
    Top = 8
  end
end
