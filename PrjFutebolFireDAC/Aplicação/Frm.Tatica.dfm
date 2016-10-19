object FrmTatica: TFrmTatica
  Left = 0
  Top = 0
  Caption = 'Cadastro de Tatica'
  ClientHeight = 383
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
  object Label1: TLabel
    Left = 16
    Top = 64
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 16
    Top = 110
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel
    Left = 16
    Top = 156
    Width = 43
    Height = 13
    Caption = 'Esquema'
  end
  object dbedtCodigo: TDBEdit
    Left = 16
    Top = 83
    Width = 89
    Height = 21
    DataField = 'TAT_CODIGO'
    DataSource = DsTatica
    TabOrder = 0
  end
  object dbedtDescricao: TDBEdit
    Left = 16
    Top = 129
    Width = 161
    Height = 21
    DataField = 'TAT_DESCRICAO'
    DataSource = DsTatica
    TabOrder = 1
  end
  object dbedtEsquema: TDBEdit
    Left = 16
    Top = 175
    Width = 161
    Height = 21
    DataField = 'TAT_ESQUEMA'
    DataSource = DsTatica
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 248
    Width = 593
    Height = 135
    Align = alBottom
    DataSource = DsTatica
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TAT_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAT_DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAT_ESQUEMA'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 8
    Width = 560
    Height = 41
    DataSource = DsTatica
    TabOrder = 4
  end
  object DsTatica: TDataSource
    DataSet = DmAcesso.QryTatica
    Left = 368
    Top = 80
  end
end
