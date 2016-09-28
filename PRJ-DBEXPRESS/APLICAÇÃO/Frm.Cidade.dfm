object FrmCidade: TFrmCidade
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cidades'
  ClientHeight = 385
  ClientWidth = 568
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
    Width = 400
    Height = 41
    DataSource = DsCidade
    TabOrder = 0
  end
  object gpCodigoCidade: TGroupBox
    Left = 0
    Top = 47
    Width = 105
    Height = 50
    Caption = 'Codigo'
    TabOrder = 1
    object dbCodigoCidade: TDBEdit
      Left = 5
      Top = 24
      Width = 100
      Height = 21
      DataField = 'CID_CODIGO'
      DataSource = DsCidade
      TabOrder = 0
    end
  end
  object gbNomeCidade: TGroupBox
    Left = 111
    Top = 47
    Width = 306
    Height = 50
    Caption = 'Cidade'
    TabOrder = 2
    object dbNomeCidade: TDBEdit
      Left = 0
      Top = 24
      Width = 303
      Height = 21
      DataField = 'CID_NOME'
      DataSource = DsCidade
      TabOrder = 0
    end
  end
  object gbIBGE: TGroupBox
    Left = 420
    Top = 47
    Width = 120
    Height = 45
    Caption = 'IBGE'
    TabOrder = 3
    object dbIBGE: TDBEdit
      Left = 3
      Top = 24
      Width = 105
      Height = 21
      DataField = 'CID_IBGE'
      DataSource = DsCidade
      TabOrder = 0
    end
  end
  object gbEstado: TGroupBox
    Left = 0
    Top = 103
    Width = 540
    Height = 42
    Caption = 'Estado'
    TabOrder = 4
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 0
      Top = 16
      Width = 537
      Height = 21
      DataField = 'CID_EST_CODIGO'
      DataSource = DsCidade
      KeyField = 'EST_CODIGO'
      ListField = 'EST_NOME'
      ListSource = DsEstado
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 151
    Width = 561
    Height = 218
    DataSource = DsCidade
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CID_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_EST_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_IBGE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_NOME'
        Width = 142
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_NOME'
        Visible = True
      end>
  end
  object DsCidade: TDataSource
    DataSet = DmCadastroLocalizacao.dsCdsCidade
    Left = 416
    Top = 16
  end
  object DsEstado: TDataSource
    DataSet = DmCadastroLocalizacao.dsCdsEstado
    Left = 480
    Top = 16
  end
end
