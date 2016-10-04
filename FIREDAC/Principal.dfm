object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 210
  Width = 410
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Felipe\Desktop\Arquivos Pendrive\Horus\4'#186'Semes' +
        'tre\Linguagem de Programa'#231#227'o II\HORUS-LP2\FIREDAC\FIREDAC.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 112
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 216
    Top = 16
  end
  object QryProprietario: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT PROPRIETARIO.PRP_CODIGO,'
      'PROPRIETARIO.PRP_NOME,'
      'PROPRIETARIO.PRP_ENDERECO'
      'FROM PROPRIETARIO')
    Left = 32
    Top = 80
    object QryProprietarioPRP_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'PRP_CODIGO'
      Origin = 'PRP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryProprietarioPRP_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'PRP_NOME'
      Origin = 'PRP_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object QryProprietarioPRP_ENDERECO: TStringField
      DisplayLabel = 'ENDERECO'
      FieldName = 'PRP_ENDERECO'
      Origin = 'PRP_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object QryVeiculo: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT VEICULO.VEI_CODIGO,'
      'VEICULO.VEI_PLACA,'
      'VEICULO.VEI_MARCA,'
      'VEICULO.VEI_MODELO,'
      'VEICULO.VEI_ANO,'
      'VEICULO.PRP_CODIGO'
      'FROM VEICULO')
    Left = 112
    Top = 80
    object QryVeiculoVEI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'VEI_CODIGO'
      Origin = 'VEI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryVeiculoVEI_PLACA: TStringField
      DisplayLabel = 'PLACA'
      FieldName = 'VEI_PLACA'
      Origin = 'VEI_PLACA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object QryVeiculoVEI_MARCA: TStringField
      DisplayLabel = 'MARCA'
      FieldName = 'VEI_MARCA'
      Origin = 'VEI_MARCA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object QryVeiculoVEI_MODELO: TStringField
      DisplayLabel = 'MODELO'
      FieldName = 'VEI_MODELO'
      Origin = 'VEI_MODELO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object QryVeiculoVEI_ANO: TIntegerField
      DisplayLabel = 'ANO'
      FieldName = 'VEI_ANO'
      Origin = 'VEI_ANO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryVeiculoPRP_CODIGO: TIntegerField
      FieldName = 'PRP_CODIGO'
      Origin = 'PRP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryVeiculoPRP_NOME: TStringField
      DisplayLabel = 'NOME PROPRIETARIO'
      FieldKind = fkLookup
      FieldName = 'PRP_NOME'
      LookupDataSet = QryProprietario
      LookupKeyFields = 'PRP_CODIGO'
      LookupResultField = 'PRP_NOME'
      KeyFields = 'PRP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 60
      Lookup = True
    end
  end
  object QryMultas: TFDQuery
    AfterInsert = QryMultasAfterInsert
    MasterSource = DsMestreVeiculo
    MasterFields = 'VEI_CODIGO'
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT MULTAS.VEI_CODIGO,'
      'MULTAS.MLT_ITEM,'
      'MULTAS.MLT_DATA,'
      'MULTAS.MLT_HORA,'
      'MULTAS.MLT_VALOR,'
      'MULTAS.MLT_LOCAL'
      'FROM MULTAS'
      'WHERE'
      '(MULTAS.VEI_CODIGO = :VEI_CODIGO)')
    Left = 128
    Top = 144
    ParamData = <
      item
        Name = 'VEI_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QryMultasVEI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'VEI_CODIGO'
      Origin = 'VEI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMultasMLT_ITEM: TIntegerField
      DisplayLabel = 'ITEM'
      FieldName = 'MLT_ITEM'
      Origin = 'MLT_ITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryMultasMLT_DATA: TDateField
      DisplayLabel = 'DATA'
      FieldName = 'MLT_DATA'
      Origin = 'MLT_DATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QryMultasMLT_HORA: TTimeField
      DisplayLabel = 'HORA'
      FieldName = 'MLT_HORA'
      Origin = 'MLT_HORA'
      ProviderFlags = [pfInUpdate]
    end
    object QryMultasMLT_VALOR: TBCDField
      DisplayLabel = 'VALOR'
      FieldName = 'MLT_VALOR'
      Origin = 'MLT_VALOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object QryMultasMLT_LOCAL: TStringField
      DisplayLabel = 'LOCAL'
      FieldName = 'MLT_LOCAL'
      Origin = 'MLT_LOCAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object DsMestreVeiculo: TDataSource
    DataSet = QryVeiculo
    Left = 208
    Top = 80
  end
end
