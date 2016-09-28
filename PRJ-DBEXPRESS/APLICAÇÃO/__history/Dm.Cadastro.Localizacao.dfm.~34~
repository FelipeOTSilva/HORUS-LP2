object DmCadastroLocalizacao: TDmCadastroLocalizacao
  OldCreateOrder = False
  Height = 177
  Width = 280
  object SdsPais: TSQLDataSet
    CommandText = 'SELECT PAI_CODIGO, PAI_NOME, PAI_SIGLA,'#13#10'PAI_BACEN FROM PAIS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.Conexao
    Left = 8
    object intgrfldSdsPaisPAI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object strngfldSdsPaisPAI_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'PAI_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object strngfldSdsPaisPAI_SIGLA: TStringField
      DisplayLabel = 'SIGLA'
      FieldName = 'PAI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object intgrfldSdsPaisPAI_BACEN: TIntegerField
      DisplayLabel = 'BACEN'
      FieldName = 'PAI_BACEN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DspPais: TDataSetProvider
    DataSet = SdsPais
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 8
    Top = 48
  end
  object dsCdsPais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPais'
    AfterPost = dsCdsPaisAfterPost
    AfterDelete = dsCdsPaisAfterDelete
    Left = 8
    Top = 104
    object intgrfldCdsPaisPAI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object strngfldCdsPaisPAI_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'PAI_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object strngfldCdsPaisPAI_SIGLA: TStringField
      DisplayLabel = 'SIGLA'
      FieldName = 'PAI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object intgrfldCdsPaisPAI_BACEN: TIntegerField
      DisplayLabel = 'BACEN'
      FieldName = 'PAI_BACEN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object SdsEstado: TSQLDataSet
    CommandText = 
      'select EST_CODIGO, EST_NOME, EST_PAI_CODIGO, EST_SIGLA from ESTA' +
      'DO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.Conexao
    Left = 72
    object intgrfldSdsEstadoEST_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'EST_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object strngfldSdsEstadoEST_NOME: TStringField
      DisplayLabel = 'NOME ESTADO'
      FieldName = 'EST_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object intgrfldSdsEstadoEST_PAI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO PAIS'
      FieldName = 'EST_PAI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object strngfldSdsEstadoEST_SIGLA: TStringField
      DisplayLabel = 'SIGLA'
      FieldName = 'EST_SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 2
    end
  end
  object DspEstado: TDataSetProvider
    DataSet = SdsEstado
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 48
  end
  object dsCdsEstado: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select EST_CODIGO, EST_NOME, EST_PAI_CODIGO, EST_SIGLA from ESTA' +
      'DO'
    Params = <>
    ProviderName = 'DspEstado'
    AfterPost = dsCdsEstadoAfterPost
    AfterDelete = dsCdsEstadoAfterDelete
    Left = 72
    Top = 104
    object intgrfldCdsEstadoEST_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'EST_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object strngfldCdsEstadoEST_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'EST_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object intgrfldCdsEstadoEST_PAI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO PAIS'
      FieldName = 'EST_PAI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object strngfldCdsEstadoEST_SIGLA: TStringField
      DisplayLabel = 'SIGLA'
      FieldName = 'EST_SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 2
    end
    object dsCdsEstadoPAI_NOME: TStringField
      DisplayLabel = 'PA'#205'S'
      FieldKind = fkLookup
      FieldName = 'PAI_NOME'
      LookupDataSet = dsCdsPais
      LookupKeyFields = 'PAI_CODIGO'
      LookupResultField = 'PAI_NOME'
      KeyFields = 'EST_PAI_CODIGO'
      ProviderFlags = []
      Size = 60
      Lookup = True
    end
  end
  object SdsCidade: TSQLDataSet
    CommandText = 
      'select CID_CODIGO, CID_EST_CODIGO, CID_IBGE, CID_NOME from CIDAD' +
      'E'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabase.Conexao
    Left = 144
    object SdsCidadeCID_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsCidadeCID_EST_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO ESTADO'
      FieldName = 'CID_EST_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SdsCidadeCID_IBGE: TIntegerField
      DisplayLabel = 'IBGE'
      FieldName = 'CID_IBGE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SdsCidadeCID_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'CID_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
  end
  object DspCidade: TDataSetProvider
    DataSet = SdsCidade
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 48
  end
  object dsCdsCidade: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select CID_CODIGO, CID_EST_CODIGO, CID_IBGE, CID_NOME from CIDAD' +
      'E'
    Params = <>
    ProviderName = 'DspCidade'
    AfterPost = dsCdsCidadeAfterPost
    AfterDelete = dsCdsCidadeAfterDelete
    Left = 144
    Top = 104
    object dsCdsCidadeCID_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dsCdsCidadeCID_EST_CODIGO: TIntegerField
      DisplayLabel = ' ESTADO'
      FieldName = 'CID_EST_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dsCdsCidadeCID_IBGE: TIntegerField
      DisplayLabel = 'IBGE'
      FieldName = 'CID_IBGE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dsCdsCidadeCID_NOME: TStringField
      DisplayLabel = 'CIDADE'
      FieldName = 'CID_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object dsCdsCidadeEST_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'EST_NOME'
      LookupDataSet = dsCdsEstado
      LookupKeyFields = 'EST_CODIGO'
      LookupResultField = 'EST_NOME'
      KeyFields = 'CID_EST_CODIGO'
      ProviderFlags = []
      Size = 60
      Lookup = True
    end
  end
end
