object FrmTecnico: TFrmTecnico
  Left = 0
  Top = 0
  Caption = 'Cadastro de T'#233'cnico'
  ClientHeight = 372
  ClientWidth = 531
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
  object Label1: TLabel
    Left = 16
    Top = 56
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 16
    Top = 102
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 16
    Top = 148
    Width = 19
    Height = 13
    Caption = 'Pa'#237's'
  end
  object dbedtCodigo: TDBEdit
    Left = 16
    Top = 75
    Width = 81
    Height = 21
    DataField = 'TEC_CODIGO'
    DataSource = DsTecnico
    TabOrder = 0
  end
  object dbedtNome: TDBEdit
    Left = 16
    Top = 121
    Width = 241
    Height = 21
    DataField = 'TEC_NOME'
    DataSource = DsTecnico
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 252
    Width = 531
    Height = 120
    Align = alBottom
    DataSource = DsTecnico
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TEC_CODIGO'
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
  object DBNavigator1: TDBNavigator
    Left = 17
    Top = 8
    Width = 500
    Height = 42
    DataSource = DsTecnico
    TabOrder = 3
  end
  object dbcbbPais: TDBLookupComboBox
    Left = 16
    Top = 168
    Width = 241
    Height = 21
    DataField = 'PAI_CODIGO'
    DataSource = DsTecnico
    KeyField = 'PAI_CODIGO'
    ListField = 'PAI_NOME'
    ListSource = DsPais
    TabOrder = 4
  end
  object DsTecnico: TDataSource
    DataSet = DmAcesso.QryTecnico
    Left = 384
    Top = 88
  end
  object DsPais: TDataSource
    DataSet = DmAcesso.QryPais
    Left = 448
    Top = 88
  end
end
