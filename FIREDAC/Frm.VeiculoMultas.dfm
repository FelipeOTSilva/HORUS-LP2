object FrmVeiculoMultas: TFrmVeiculoMultas
  Left = 0
  Top = 0
  Caption = 'FrmVeiculoMultas'
  ClientHeight = 505
  ClientWidth = 654
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
  object Codigo: TLabel
    Left = 8
    Top = 39
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label1: TLabel
    Left = 8
    Top = 83
    Width = 25
    Height = 13
    Caption = 'Placa'
  end
  object Marca: TLabel
    Left = 152
    Top = 83
    Width = 29
    Height = 13
    Caption = 'Marca'
  end
  object Label2: TLabel
    Left = 312
    Top = 83
    Width = 34
    Height = 13
    Caption = 'Modelo'
  end
  object Label3: TLabel
    Left = 480
    Top = 83
    Width = 19
    Height = 13
    Caption = 'Ano'
  end
  object Label4: TLabel
    Left = 8
    Top = 139
    Width = 56
    Height = 13
    Caption = 'Proprietario'
  end
  object Label5: TLabel
    Left = 31
    Top = 335
    Width = 22
    Height = 13
    Caption = 'Item'
  end
  object Label6: TLabel
    Left = 152
    Top = 335
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label7: TLabel
    Left = 264
    Top = 335
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  object Label8: TLabel
    Left = 376
    Top = 335
    Width = 40
    Height = 13
    Caption = 'R$ Valor'
  end
  object Label9: TLabel
    Left = 31
    Top = 381
    Width = 24
    Height = 13
    Caption = 'Local'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 640
    Height = 33
    DataSource = DsVeiculo
    TabOrder = 0
  end
  object dbedtCodigo: TDBEdit
    Left = 8
    Top = 56
    Width = 121
    Height = 21
    DataField = 'VEI_CODIGO'
    DataSource = DsVeiculo
    TabOrder = 1
  end
  object dbedtPlaca: TDBEdit
    Left = 8
    Top = 102
    Width = 121
    Height = 21
    DataField = 'VEI_PLACA'
    DataSource = DsVeiculo
    TabOrder = 2
  end
  object dbedtMarca: TDBEdit
    Left = 152
    Top = 102
    Width = 145
    Height = 21
    DataField = 'VEI_MARCA'
    DataSource = DsVeiculo
    TabOrder = 3
  end
  object dbedtModelo: TDBEdit
    Left = 312
    Top = 102
    Width = 145
    Height = 21
    DataField = 'VEI_MODELO'
    DataSource = DsVeiculo
    TabOrder = 4
  end
  object dbedtAno: TDBEdit
    Left = 480
    Top = 102
    Width = 145
    Height = 21
    DataField = 'VEI_ANO'
    DataSource = DsVeiculo
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 187
    Width = 638
    Height = 94
    DataSource = DsVeiculo
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VEI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_PLACA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_MARCA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_MODELO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_ANO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRP_NOME'
        Visible = True
      end>
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 160
    Width = 617
    Height = 21
    DataField = 'PRP_CODIGO'
    DataSource = DsVeiculo
    KeyField = 'PRP_CODIGO'
    ListField = 'PRP_NOME'
    ListSource = DsProprietario
    TabOrder = 7
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 296
    Width = 270
    Height = 33
    DataSource = DsMultas
    TabOrder = 8
  end
  object dbedtItem: TDBEdit
    Left = 31
    Top = 354
    Width = 98
    Height = 21
    DataField = 'MLT_ITEM'
    DataSource = DsMultas
    TabOrder = 9
  end
  object dbedtData: TDBEdit
    Left = 152
    Top = 354
    Width = 98
    Height = 21
    DataField = 'MLT_DATA'
    DataSource = DsMultas
    TabOrder = 10
  end
  object dbedtHora: TDBEdit
    Left = 264
    Top = 354
    Width = 98
    Height = 21
    DataField = 'MLT_HORA'
    DataSource = DsMultas
    TabOrder = 11
  end
  object DBEdit1: TDBEdit
    Left = 376
    Top = 354
    Width = 260
    Height = 21
    DataField = 'MLT_VALOR'
    DataSource = DsMultas
    TabOrder = 12
  end
  object dbedtLocal: TDBEdit
    Left = 32
    Top = 400
    Width = 604
    Height = 21
    DataField = 'MLT_LOCAL'
    DataSource = DsMultas
    TabOrder = 13
  end
  object DBGrid2: TDBGrid
    Left = 31
    Top = 427
    Width = 605
    Height = 75
    DataSource = DsMultas
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'MLT_ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_HORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_LOCAL'
        Width = 64
        Visible = True
      end>
  end
  object DsVeiculo: TDataSource
    DataSet = DataModule2.QryVeiculo
    Left = 344
    Top = 48
  end
  object DsMultas: TDataSource
    DataSet = DataModule2.QryMultas
    Left = 416
    Top = 48
  end
  object DsProprietario: TDataSource
    DataSet = DataModule2.QryProprietario
    Left = 496
    Top = 40
  end
end
