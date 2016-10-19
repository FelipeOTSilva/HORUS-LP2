object DmAcesso: TDmAcesso
  OldCreateOrder = False
  Height = 367
  Width = 578
  object QryPais: TFDQuery
    Active = True
    Connection = DmConexao.FDConnection
    SQL.Strings = (
      'SELECT PAI_CODIGO,'
      '       PAI_NOME'
      '  FROM PAIS'
      ''
      '')
    Left = 32
    Top = 24
    object QryPaisPAI_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPaisPAI_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'PAI_NOME'
      Origin = 'PAI_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
  end
  object QryTatica: TFDQuery
    Active = True
    Connection = DmConexao.FDConnection
    SQL.Strings = (
      'SELECT TAT_CODIGO,'
      '       TAT_DESCRICAO,'
      '       TAT_ESQUEMA'
      '  FROM TATICA')
    Left = 152
    Top = 24
    object QryTaticaTAT_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TAT_CODIGO'
      Origin = 'TAT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryTaticaTAT_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TAT_DESCRICAO'
      Origin = 'TAT_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object QryTaticaTAT_ESQUEMA: TStringField
      DisplayLabel = 'Esquema'
      FieldName = 'TAT_ESQUEMA'
      Origin = 'TAT_ESQUEMA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 5
    end
  end
  object QryTecnico: TFDQuery
    Active = True
    Connection = DmConexao.FDConnection
    SQL.Strings = (
      'SELECT TEC_CODIGO,'
      '       PAI_CODIGO,'
      '       TEC_NOME'
      '  FROM TECNICO')
    Left = 88
    Top = 24
    object QryTecnicoTEC_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TEC_CODIGO'
      Origin = 'TEC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryTecnicoPAI_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo do P'#225'is'
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryTecnicoTEC_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'TEC_NOME'
      Origin = 'TEC_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object QryTecnicoPAI_NOME: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldKind = fkLookup
      FieldName = 'PAI_NOME'
      LookupDataSet = QryPais
      LookupKeyFields = 'PAI_CODIGO'
      LookupResultField = 'PAI_NOME'
      KeyFields = 'PAI_CODIGO'
      Size = 60
      Lookup = True
    end
  end
  object QryJogador: TFDQuery
    AfterInsert = QryJogadorAfterInsert
    MasterSource = DsMestreClube
    MasterFields = 'CLB_CODIGO'
    Connection = DmConexao.FDConnection
    SQL.Strings = (
      'SELECT CLB_CODIGO,'
      '       JOG_NUMERO,'
      '       PAI_CODIGO,'
      '       JOG_NOME,'
      '       JOG_POSICAO,'
      '       JOG_IDADE,'
      '       JOG_LADO,'
      '       JOG_TITULAR,'
      '       JOG_CARACTERISTICA'
      '  FROM JOGADOR'
      'WHERE'
      '(JOGADOR.CLB_CODIGO = :CLB_CODIGO)')
    Left = 152
    Top = 80
    ParamData = <
      item
        Name = 'CLB_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object QryJogadorCLB_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO CLUBE'
      FieldName = 'CLB_CODIGO'
      Origin = 'CLB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryJogadorJOG_NUMERO: TIntegerField
      DisplayLabel = 'NUMERO JOGADOR'
      FieldName = 'JOG_NUMERO'
      Origin = 'JOG_NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryJogadorPAI_CODIGO: TIntegerField
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryJogadorJOG_NOME: TStringField
      DisplayLabel = 'NOME JOGADOR'
      FieldName = 'JOG_NOME'
      Origin = 'JOG_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object QryJogadorJOG_POSICAO: TStringField
      DisplayLabel = 'POSICAO'
      FieldName = 'JOG_POSICAO'
      Origin = 'JOG_POSICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object QryJogadorJOG_IDADE: TIntegerField
      DisplayLabel = 'IDADE'
      FieldName = 'JOG_IDADE'
      Origin = 'JOG_IDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryJogadorJOG_LADO: TStringField
      DisplayLabel = 'LADO'
      FieldName = 'JOG_LADO'
      Origin = 'JOG_LADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryJogadorJOG_TITULAR: TStringField
      DisplayLabel = 'TITULAR'
      FieldName = 'JOG_TITULAR'
      Origin = 'JOG_TITULAR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QryJogadorJOG_CARACTERISTICA: TStringField
      DisplayLabel = 'CARACTERISTICA'
      FieldName = 'JOG_CARACTERISTICA'
      Origin = 'JOG_CARACTERISTICA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object QryClube: TFDQuery
    Active = True
    Connection = DmConexao.FDConnection
    SQL.Strings = (
      'SELECT CLB_CODIGO,'
      '       TAT_CODIGO,'
      '       TEC_CODIGO,'
      '       PAI_CODIGO,'
      '       CLB_NOME,'
      '       CLB_ESTADIO,'
      '       CLB_DTFUNDACAO'
      '  FROM CLUBE')
    Left = 32
    Top = 80
    object QryClubeCLB_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO CLUBE'
      FieldName = 'CLB_CODIGO'
      Origin = 'CLB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryClubeTAT_CODIGO: TIntegerField
      DisplayLabel = 'TATICA'
      FieldName = 'TAT_CODIGO'
      Origin = 'TAT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryClubeTEC_CODIGO: TIntegerField
      DisplayLabel = 'TECNICO'
      FieldName = 'TEC_CODIGO'
      Origin = 'TEC_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryClubePAI_CODIGO: TIntegerField
      DisplayLabel = 'PA'#205'S'
      FieldName = 'PAI_CODIGO'
      Origin = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryClubeCLB_NOME: TStringField
      DisplayLabel = 'NOME CLUBE'
      FieldName = 'CLB_NOME'
      Origin = 'CLB_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object QryClubeCLB_ESTADIO: TStringField
      DisplayLabel = 'ESTADIO'
      FieldName = 'CLB_ESTADIO'
      Origin = 'CLB_ESTADIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object QryClubeCLB_DTFUNDACAO: TDateField
      DisplayLabel = 'DATA FUNDA'#199#195'O'
      FieldName = 'CLB_DTFUNDACAO'
      Origin = 'CLB_DTFUNDACAO'
      ProviderFlags = [pfInUpdate]
    end
    object QryClubeTAT_NOME: TStringField
      DisplayLabel = 'TATICA'
      FieldKind = fkLookup
      FieldName = 'TAT_NOME'
      LookupDataSet = QryTatica
      LookupKeyFields = 'TAT_CODIGO'
      LookupResultField = 'TAT_ESQUEMA'
      KeyFields = 'TAT_CODIGO'
      Size = 60
      Lookup = True
    end
    object QryClubeTEC_NOME: TStringField
      DisplayLabel = 'TECNICO'
      FieldKind = fkLookup
      FieldName = 'TEC_NOME'
      LookupDataSet = QryTecnico
      LookupKeyFields = 'TEC_CODIGO'
      LookupResultField = 'TEC_NOME'
      KeyFields = 'TEC_CODIGO'
      Size = 60
      Lookup = True
    end
    object QryClubePAI_NOME: TStringField
      DisplayLabel = 'PA'#205'S'
      FieldKind = fkLookup
      FieldName = 'PAI_NOME'
      LookupDataSet = QryPais
      LookupKeyFields = 'PAI_CODIGO'
      LookupResultField = 'PAI_NOME'
      KeyFields = 'PAI_CODIGO'
      Size = 60
      Lookup = True
    end
  end
  object DsMestreClube: TDataSource
    DataSet = QryClube
    Left = 96
    Top = 80
  end
end
