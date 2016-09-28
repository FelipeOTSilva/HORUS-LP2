object FrmEstado: TFrmEstado
  Left = 0
  Top = 0
  Caption = 'Cadastro de Estado'
  ClientHeight = 416
  ClientWidth = 593
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
  object gpCodigoEstado: TGroupBox
    Left = 0
    Top = 47
    Width = 121
    Height = 50
    Caption = 'Codigo'
    TabOrder = 0
    object dbCodigoEstado: TDBEdit
      Left = 0
      Top = 24
      Width = 121
      Height = 21
      DataField = 'EST_CODIGO'
      DataSource = DsEstado
      TabOrder = 0
    end
  end
  object gpNomeEstado: TGroupBox
    Left = 127
    Top = 47
    Width = 338
    Height = 50
    Caption = 'Estado'
    TabOrder = 1
    object DBEdit1: TDBEdit
      Left = 1
      Top = 26
      Width = 334
      Height = 21
      DataField = 'EST_NOME'
      DataSource = DsEstado
      TabOrder = 0
    end
  end
  object gpSigla: TGroupBox
    Left = 471
    Top = 47
    Width = 82
    Height = 47
    Caption = 'Sigla'
    TabOrder = 2
    object dbSiglaEstado: TDBEdit
      Left = 3
      Top = 24
      Width = 76
      Height = 21
      DataField = 'EST_SIGLA'
      DataSource = DsEstado
      TabOrder = 0
    end
  end
  object gpPais: TGroupBox
    Left = 0
    Top = 103
    Width = 550
    Height = 42
    Caption = 'Pa'#237's'
    TabOrder = 3
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 3
      Top = 16
      Width = 547
      Height = 21
      DataField = 'EST_PAI_CODIGO'
      DataSource = DsEstado
      KeyField = 'PAI_CODIGO'
      ListField = 'PAI_NOME'
      ListSource = DsPais
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 151
    Width = 585
    Height = 257
    DataSource = DsEstado
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'EST_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_NOME'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_PAI_CODIGO'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_SIGLA'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_NOME'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 3
    Top = 0
    Width = 440
    Height = 41
    DataSource = DsEstado
    TabOrder = 5
  end
  object DsEstado: TDataSource
    DataSet = DmCadastroLocalizacao.dsCdsEstado
    Left = 456
    Top = 8
  end
  object DsPais: TDataSource
    DataSet = DmCadastroLocalizacao.dsCdsPais
    Left = 512
    Top = 8
  end
end
