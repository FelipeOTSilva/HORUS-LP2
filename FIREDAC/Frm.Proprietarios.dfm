object FrmProprietario: TFrmProprietario
  Left = 0
  Top = 0
  Caption = 'Cadastro Proprietario'
  ClientHeight = 329
  ClientWidth = 528
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
    Left = 8
    Top = 47
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label2: TLabel
    Left = 8
    Top = 91
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 8
    Top = 147
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 520
    Height = 41
    DataSource = DsProprietario
    TabOrder = 0
  end
  object dbedtCodigo: TDBEdit
    Left = 8
    Top = 64
    Width = 121
    Height = 21
    DataField = 'PRP_CODIGO'
    DataSource = DsProprietario
    TabOrder = 1
  end
  object dbedtNome: TDBEdit
    Left = 8
    Top = 110
    Width = 510
    Height = 21
    DataField = 'PRP_NOME'
    DataSource = DsProprietario
    TabOrder = 2
  end
  object dbedtEndereco: TDBEdit
    Left = 8
    Top = 166
    Width = 510
    Height = 21
    DataField = 'PRP_ENDERECO'
    DataSource = DsProprietario
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 192
    Width = 512
    Height = 129
    DataSource = DsProprietario
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRP_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRP_NOME'
        Width = 196
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRP_ENDERECO'
        Visible = True
      end>
  end
  object DsProprietario: TDataSource
    DataSet = DataModule2.QryProprietario
    Left = 424
    Top = 48
  end
end
