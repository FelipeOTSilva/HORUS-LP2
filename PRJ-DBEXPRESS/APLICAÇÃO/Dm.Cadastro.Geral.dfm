object DmCadastroGeral: TDmCadastroGeral
  OldCreateOrder = False
  Height = 170
  Width = 154
  object SdsProdutos: TSQLDataSet
    CommandText = 'select * from PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.Conexao
    Left = 16
    Top = 8
    object SdsProdutosPRO_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsProdutosPRO_DESCRICAO: TStringField
      DisplayLabel = 'DESCRICAO'
      FieldName = 'PRO_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object SdsProdutosPRO_PRECO: TFMTBCDField
      DisplayLabel = 'PRE'#199'O'
      FieldName = 'PRO_PRECO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object DspProdutos: TDataSetProvider
    DataSet = SdsProdutos
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 16
    Top = 56
  end
  object CdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspProdutos'
    AfterPost = CdsProdutosAfterPost
    AfterDelete = CdsProdutosAfterDelete
    Left = 16
    Top = 104
    object CdsProdutosPRO_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsProdutosPRO_DESCRICAO: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'PRO_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object CdsProdutosPRO_PRECO: TFMTBCDField
      DisplayLabel = 'PRE'#199'O'
      FieldName = 'PRO_PRECO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object SdsCliente: TSQLDataSet
    CommandText = 'select * from CLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.Conexao
    Left = 96
    Top = 8
    object SdsClienteCLI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsClienteCLI_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'CLI_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object SdsClienteCLI_CPFCNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CLI_CPFCNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object SdsClienteCLI_ENDERECO: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'CLI_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object SdsClienteCLI_BAIRRO: TStringField
      DisplayLabel = 'BAIRRO'
      FieldName = 'CLI_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SdsClienteCLI_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CLI_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SdsClienteCLI_TELEFONE: TStringField
      DisplayLabel = 'TELEFONE'
      FieldName = 'CLI_TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SdsClienteCLI_EMAIL: TStringField
      DisplayLabel = 'EMAIL'
      FieldName = 'CLI_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SdsClienteCLI_CID_CODIGO: TIntegerField
      DisplayLabel = 'NOME CIDADE'
      FieldName = 'CLI_CID_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DspCliente: TDataSetProvider
    DataSet = SdsCliente
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 56
  end
  object CdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCliente'
    AfterPost = CdsClienteAfterPost
    AfterDelete = CdsClienteAfterDelete
    Left = 96
    Top = 104
    object CdsClienteCLI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsClienteCLI_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'CLI_NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 60
    end
    object CdsClienteCLI_CPFCNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CLI_CPFCNPJ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 18
    end
    object CdsClienteCLI_ENDERECO: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'CLI_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object CdsClienteCLI_BAIRRO: TStringField
      DisplayLabel = 'BAIRRO'
      FieldName = 'CLI_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsClienteCLI_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CLI_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsClienteCLI_TELEFONE: TStringField
      DisplayLabel = 'TELEFONE'
      FieldName = 'CLI_TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsClienteCLI_EMAIL: TStringField
      DisplayLabel = 'EMAIL'
      FieldName = 'CLI_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsClienteCLI_CID_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO CIDADE'
      FieldName = 'CLI_CID_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsClienteCID_NOME: TStringField
      DisplayLabel = 'NOME CIDADE'
      FieldKind = fkLookup
      FieldName = 'CID_NOME'
      LookupDataSet = DmCadastroLocalizacao.dsCdsCidade
      LookupKeyFields = 'CID_CODIGO'
      LookupResultField = 'CID_NOME'
      KeyFields = 'CLI_CID_CODIGO'
      ProviderFlags = []
      Size = 60
      Lookup = True
    end
  end
end
