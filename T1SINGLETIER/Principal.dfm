object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 480
  ClientWidth = 1040
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 0
    Top = 0
    Width = 1032
    Height = 49
    TabOrder = 0
    object dbnvgr1: TDBNavigator
      Left = 440
      Top = 3
      Width = 580
      Height = 41
      DataSource = DataSource
      TabOrder = 0
    end
  end
  object grp2: TGroupBox
    Left = 0
    Top = 55
    Width = 1032
    Height = 90
    TabOrder = 1
    object grpCodigo: TGroupBox
      Left = 0
      Top = 0
      Width = 137
      Height = 41
      Caption = 'Codigo'
      TabOrder = 0
    end
    object edt_Codigo: TEdit
      Left = 3
      Top = 16
      Width = 134
      Height = 21
      TabOrder = 1
    end
    object grpDescricao: TGroupBox
      Left = 143
      Top = 0
      Width = 738
      Height = 41
      Caption = 'Descri'#231#227'o'
      TabOrder = 2
    end
    object edtDescricao: TEdit
      Left = 144
      Top = 16
      Width = 729
      Height = 21
      TabOrder = 3
    end
    object grpUnidade: TGroupBox
      Left = 879
      Top = 2
      Width = 130
      Height = 39
      Caption = 'Unidade'
      TabOrder = 4
    end
    object edtUnidade: TEdit
      Left = 879
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object grpData: TGroupBox
      Left = 0
      Top = 43
      Width = 137
      Height = 38
      Caption = 'Data'
      TabOrder = 6
    end
    object edtData: TEdit
      Left = 3
      Top = 60
      Width = 134
      Height = 21
      TabOrder = 7
    end
    object grp3: TGroupBox
      Left = 143
      Top = 43
      Width = 394
      Height = 38
      Caption = 'Fornecedor'
      TabOrder = 8
    end
    object edtFornecedor: TEdit
      Left = 143
      Top = 60
      Width = 394
      Height = 21
      TabOrder = 9
    end
    object grp4: TGroupBox
      Left = 543
      Top = 43
      Width = 121
      Height = 38
      Caption = 'Quantidade (+ ou -)'
      TabOrder = 10
    end
    object edtQuantidade: TEdit
      Left = 543
      Top = 60
      Width = 121
      Height = 21
      TabOrder = 11
    end
    object grp5: TGroupBox
      Left = 670
      Top = 43
      Width = 121
      Height = 38
      Caption = 'Unitario'
      TabOrder = 12
    end
    object edtUnitario: TEdit
      Left = 670
      Top = 60
      Width = 203
      Height = 21
      TabOrder = 13
    end
    object grpTotal: TGroupBox
      Left = 879
      Top = 47
      Width = 130
      Height = 34
      Caption = 'Total'
      TabOrder = 14
    end
    object edtTotal: TEdit
      Left = 879
      Top = 60
      Width = 121
      Height = 21
      TabOrder = 15
    end
  end
  object grp6: TGroupBox
    Left = 0
    Top = 142
    Width = 1032
    Height = 67
    Caption = 'Pesquisa, Ordena'#231#227'o e Filtragem'
    TabOrder = 2
    object grp7: TGroupBox
      Left = 3
      Top = 16
      Width = 145
      Height = 41
      Caption = 'Campo'
      TabOrder = 0
    end
    object cbbCampo: TComboBox
      Left = 3
      Top = 32
      Width = 145
      Height = 21
      ItemIndex = 0
      TabOrder = 1
      Text = 'Codigo'
      Items.Strings = (
        'Codigo'
        'Descri'#231#227'o'
        'Unidade'
        'Fornecedor'
        'Data'
        'Quantidade'
        'Unit'#225'rio'
        'Total'
        'Quantidade Estoque'
        'Valor Estoque')
    end
    object grpAcao: TGroupBox
      Left = 168
      Top = 16
      Width = 145
      Height = 41
      Caption = 'A'#231#227'o'
      TabOrder = 2
    end
    object cbbAcao: TComboBox
      Left = 168
      Top = 32
      Width = 145
      Height = 21
      ItemIndex = 0
      TabOrder = 3
      Text = 'Indexar'
      Items.Strings = (
        'Indexar'
        'Locate'
        'FindKey'
        'Limpar'
        'Percorrer'
        'Filtrar'
        'Limpar Filtro')
    end
    object grpValor: TGroupBox
      Left = 319
      Top = 16
      Width = 354
      Height = 41
      Caption = 'Valor'
      TabOrder = 4
    end
    object edtValor: TEdit
      Left = 319
      Top = 32
      Width = 345
      Height = 21
      TabOrder = 5
    end
    object btnExecutar: TButton
      Left = 688
      Top = 24
      Width = 289
      Height = 33
      Caption = 'Executar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object dbgrd1: TDBGrid
    Left = 0
    Top = 215
    Width = 1032
    Height = 194
    DataSource = DataSource
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unitario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Visible = True
      end>
  end
  object grpTotais: TGroupBox
    Left = 0
    Top = 407
    Width = 1032
    Height = 74
    Caption = 'Totais'
    TabOrder = 4
    object lbl1: TLabel
      Left = 543
      Top = 40
      Width = 115
      Height = 13
      Caption = 'Quantidade em Estoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 800
      Top = 40
      Width = 81
      Height = 13
      Caption = 'Valor do Estoque'
    end
    object dbedtQtdemEstoque: TDBEdit
      Left = 664
      Top = 32
      Width = 121
      Height = 25
      DataSource = DataSource
      TabOrder = 0
    end
    object dbedtValorEstoque: TDBEdit
      Left = 887
      Top = 32
      Width = 121
      Height = 25
      DataSource = DataSource
      TabOrder = 1
    end
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    OnCalcFields = ClientDataSetCalcFields
    Left = 424
    Top = 248
    object intgrfldClientDataSetCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object strngfldClientDataSetDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object strngfldClientDataSetUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object strngfldClientDataSetFornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 50
    end
    object ClientDataSetData: TDateField
      FieldName = 'Data'
    end
    object ClientDataSetQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object crncyfldClientDataSetUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object crncyfldClientDataSetTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object ClientDataSetEstoqueQtd: TAggregateField
      FieldName = 'EstoqueQtd'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(EstoqueQtd)'
    end
    object ClientDataSetEstoqueVlr: TAggregateField
      FieldName = 'EstoqueVlr'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'Quantidade*Unitario'
    end
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 552
    Top = 248
  end
end