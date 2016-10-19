object FrmCadastroPais: TFrmCadastroPais
  Left = 0
  Top = 0
  Caption = 'Cadastro Pa'#237's'
  ClientHeight = 390
  ClientWidth = 547
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
    Left = 24
    Top = 56
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 24
    Top = 102
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object dbedtCodigo: TDBEdit
    Left = 24
    Top = 75
    Width = 121
    Height = 21
    DataField = 'PAI_CODIGO'
    DataSource = DsPais
    TabOrder = 0
  end
  object dbedtPais: TDBEdit
    Left = 24
    Top = 121
    Width = 265
    Height = 21
    DataField = 'PAI_NOME'
    DataSource = DsPais
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 226
    Width = 547
    Height = 164
    Align = alBottom
    DataSource = DsPais
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PAI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_NOME'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 8
    Width = 530
    Height = 33
    DataSource = DsPais
    TabOrder = 3
  end
  object DsPais: TDataSource
    DataSet = DmAcesso.QryPais
    Left = 320
    Top = 64
  end
end
