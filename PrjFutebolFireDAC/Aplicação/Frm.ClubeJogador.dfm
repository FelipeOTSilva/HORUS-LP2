object FrmClubeJogador: TFrmClubeJogador
  Left = 342
  Top = 55
  Caption = 'Cadastro Clube/Jogador'
  ClientHeight = 634
  ClientWidth = 975
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 64
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label2: TLabel
    Left = 135
    Top = 64
    Width = 72
    Height = 13
    Caption = 'Nome do Clube'
  end
  object Label3: TLabel
    Left = 398
    Top = 64
    Width = 80
    Height = 13
    Caption = 'Nome do Estadio'
  end
  object Label4: TLabel
    Left = 591
    Top = 64
    Width = 88
    Height = 13
    Caption = 'Data de Funda'#231#227'o'
  end
  object Label5: TLabel
    Left = 747
    Top = 64
    Width = 19
    Height = 13
    Caption = 'Pa'#237's'
  end
  object Label6: TLabel
    Left = 6
    Top = 105
    Width = 29
    Height = 13
    Caption = 'Tatica'
  end
  object Label7: TLabel
    Left = 269
    Top = 105
    Width = 36
    Height = 13
    Caption = 'T'#233'cnico'
  end
  object Label8: TLabel
    Left = 8
    Top = 328
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label9: TLabel
    Left = 135
    Top = 328
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label10: TLabel
    Left = 423
    Top = 328
    Width = 36
    Height = 13
    Caption = 'Posi'#231#227'o'
  end
  object Label11: TLabel
    Left = 719
    Top = 328
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object Label12: TLabel
    Left = 8
    Top = 374
    Width = 23
    Height = 13
    Caption = 'Lado'
  end
  object Label13: TLabel
    Left = 135
    Top = 374
    Width = 30
    Height = 13
    Caption = 'Titular'
  end
  object Label14: TLabel
    Left = 262
    Top = 374
    Width = 71
    Height = 13
    Caption = 'Caracter'#237'sticas'
  end
  object Label15: TLabel
    Left = 719
    Top = 374
    Width = 19
    Height = 13
    Caption = 'Pa'#237's'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 975
    Height = 41
    DataSource = DsClube
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 974
  end
  object dbedtCodigoClube: TDBEdit
    Left = 8
    Top = 80
    Width = 121
    Height = 21
    DataField = 'CLB_CODIGO'
    DataSource = DsClube
    TabOrder = 1
  end
  object dbedtNomeClube: TDBEdit
    Left = 135
    Top = 80
    Width = 257
    Height = 21
    DataField = 'CLB_NOME'
    DataSource = DsClube
    TabOrder = 2
  end
  object dbedtNomeEstadio: TDBEdit
    Left = 398
    Top = 80
    Width = 187
    Height = 21
    DataField = 'CLB_ESTADIO'
    DataSource = DsClube
    TabOrder = 3
  end
  object dbedtDataFundacao: TDBEdit
    Left = 591
    Top = 80
    Width = 147
    Height = 21
    DataField = 'CLB_DTFUNDACAO'
    DataSource = DsClube
    TabOrder = 4
  end
  object dbcbbPais: TDBLookupComboBox
    Left = 747
    Top = 80
    Width = 219
    Height = 21
    DataField = 'PAI_CODIGO'
    DataSource = DsClube
    KeyField = 'PAI_CODIGO'
    ListField = 'PAI_NOME'
    ListSource = DsPais
    TabOrder = 5
  end
  object dbcbbTatica: TDBLookupComboBox
    Left = 6
    Top = 124
    Width = 243
    Height = 21
    DataField = 'TAT_CODIGO'
    DataSource = DsClube
    KeyField = 'TAT_CODIGO'
    ListField = 'TAT_DESCRICAO'
    ListSource = DsTatica
    TabOrder = 6
  end
  object dbcbbTecnico: TDBLookupComboBox
    Left = 269
    Top = 124
    Width = 410
    Height = 21
    DataField = 'TEC_CODIGO'
    DataSource = DsClube
    KeyField = 'TEC_CODIGO'
    ListField = 'TEC_NOME'
    ListSource = DsTecnico
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 151
    Width = 961
    Height = 120
    DataSource = DsClube
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLB_CODIGO'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLB_NOME'
        Width = 237
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLB_ESTADIO'
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLB_DTFUNDACAO'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAT_NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEC_NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_NOME'
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 277
    Width = 960
    Height = 41
    DataSource = DsJogador
    TabOrder = 9
  end
  object dbedtNumeroJogador: TDBEdit
    Left = 8
    Top = 347
    Width = 121
    Height = 21
    DataField = 'JOG_NUMERO'
    DataSource = DsJogador
    TabOrder = 10
  end
  object dbedtNomeJogador: TDBEdit
    Left = 135
    Top = 347
    Width = 282
    Height = 21
    DataField = 'JOG_NOME'
    DataSource = DsJogador
    TabOrder = 11
  end
  object dbedtPosicao: TDBEdit
    Left = 423
    Top = 347
    Width = 290
    Height = 21
    DataField = 'JOG_POSICAO'
    DataSource = DsJogador
    TabOrder = 12
  end
  object dbedtIdadeJogador: TDBEdit
    Left = 719
    Top = 347
    Width = 199
    Height = 21
    DataField = 'JOG_IDADE'
    DataSource = DsJogador
    TabOrder = 13
  end
  object dbedtLado: TDBEdit
    Left = 8
    Top = 393
    Width = 121
    Height = 21
    DataField = 'JOG_LADO'
    DataSource = DsJogador
    TabOrder = 14
  end
  object dbedtTitular: TDBEdit
    Left = 135
    Top = 393
    Width = 121
    Height = 21
    DataField = 'JOG_TITULAR'
    DataSource = DsJogador
    TabOrder = 15
  end
  object dbedtCaracteristicas: TDBEdit
    Left = 262
    Top = 393
    Width = 451
    Height = 21
    DataField = 'JOG_CARACTERISTICA'
    DataSource = DsJogador
    TabOrder = 16
  end
  object dbcbbPaisJogador: TDBLookupComboBox
    Left = 719
    Top = 393
    Width = 199
    Height = 21
    DataField = 'PAI_CODIGO'
    DataSource = DsJogador
    KeyField = 'PAI_CODIGO'
    ListField = 'PAI_NOME'
    ListSource = DsPais
    TabOrder = 17
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 420
    Width = 958
    Height = 213
    Align = alCustom
    DataSource = DsJogador
    TabOrder = 18
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'JOG_NUMERO'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JOG_NOME'
        Width = 242
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JOG_POSICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JOG_IDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JOG_LADO'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JOG_TITULAR'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JOG_CARACTERISTICA'
        Width = 234
        Visible = True
      end>
  end
  object DsClube: TDataSource
    DataSet = DmAcesso.QryClube
    Left = 704
    Top = 104
  end
  object DsJogador: TDataSource
    DataSet = DmAcesso.QryJogador
    Left = 752
    Top = 104
  end
  object DsTatica: TDataSource
    DataSet = DmAcesso.QryTatica
    Left = 800
    Top = 104
  end
  object DsTecnico: TDataSource
    DataSet = DmAcesso.QryTecnico
    Left = 848
    Top = 104
  end
  object DsPais: TDataSource
    DataSet = DmAcesso.QryPais
    Left = 896
    Top = 104
  end
end
