inherited Frm_Produto: TFrm_Produto
  Caption = 'Cadastro de Produtos'
  ClientHeight = 403
  ClientWidth = 809
  ExplicitWidth = 815
  ExplicitHeight = 431
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 40
    Top = 80
    Width = 89
    Height = 13
    Caption = 'C'#243'digo do produto'
    FocusControl = DB_ID_PRODUTO
  end
  object Label2: TLabel [1]
    Left = 40
    Top = 120
    Width = 102
    Height = 13
    Caption = 'Descri'#231#227'o do produto'
    FocusControl = DB_PRODUTO_DESCRICAO
  end
  object Label3: TLabel [2]
    Left = 40
    Top = 160
    Width = 104
    Height = 13
    Caption = 'C'#243'digo do fornecedor'
    FocusControl = DB_ID_FORNECEDOR
  end
  object Label4: TLabel [3]
    Left = 40
    Top = 200
    Width = 71
    Height = 13
    Caption = 'Pre'#231'o de custo'
    FocusControl = DB_VL_CUSTO
  end
  object Label5: TLabel [4]
    Left = 263
    Top = 200
    Width = 72
    Height = 13
    Caption = 'Valor de venda'
    FocusControl = DB_VL_VENDA
  end
  object Label6: TLabel [5]
    Left = 40
    Top = 243
    Width = 39
    Height = 13
    Caption = 'Estoque'
    FocusControl = DB_ESTOQUE
  end
  object Label7: TLabel [6]
    Left = 328
    Top = 246
    Width = 74
    Height = 13
    Caption = 'Estoque m'#237'nimo'
    FocusControl = DB_ESTOQUE_MIN
  end
  object Label8: TLabel [7]
    Left = 40
    Top = 289
    Width = 39
    Height = 13
    Caption = 'Unidade'
  end
  object Label9: TLabel [8]
    Left = 384
    Top = 80
    Width = 44
    Height = 13
    Caption = 'Cadastro'
    FocusControl = DB_CADASTRO
  end
  inherited pnlTop: TPanel
    Width = 809
    ExplicitWidth = 809
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  inherited pnlBottom: TPanel
    Top = 345
    Width = 809
    ExplicitTop = 345
    ExplicitWidth = 809
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DB_ID_PRODUTO: TDBEdit [12]
    Left = 40
    Top = 96
    Width = 134
    Height = 21
    DataField = 'ID_PRODUTO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DB_PRODUTO_DESCRICAO: TDBEdit [13]
    Left = 42
    Top = 133
    Width = 472
    Height = 21
    DataField = 'PRODUTO_DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DB_ID_FORNECEDOR: TDBEdit [14]
    Left = 40
    Top = 176
    Width = 134
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DB_VL_CUSTO: TDBEdit [15]
    Left = 40
    Top = 216
    Width = 177
    Height = 21
    DataField = 'VL_CUSTO'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DB_VL_VENDA: TDBEdit [16]
    Left = 263
    Top = 216
    Width = 251
    Height = 21
    DataField = 'VL_VENDA'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DB_ESTOQUE: TDBEdit [17]
    Left = 40
    Top = 262
    Width = 251
    Height = 21
    DataField = 'ESTOQUE'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DB_ESTOQUE_MIN: TDBEdit [18]
    Left = 328
    Top = 262
    Width = 186
    Height = 21
    DataField = 'ESTOQUE_MIN'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object DB_CADASTRO: TDBEdit [19]
    Left = 384
    Top = 96
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DB_NOME_FORNECEDOR: TDBEdit [20]
    Left = 216
    Top = 176
    Width = 298
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 11
  end
  object DB_UNIDADE: TDBComboBox [21]
    Left = 40
    Top = 308
    Width = 145
    Height = 21
    DataField = 'UNIDADE'
    DataSource = ds_padrao
    Items.Strings = (
      'UNIDADE'
      'FARDO'
      'LITRO'
      'KILO'
      'GRAMA'
      'PACOTE'
      'MILILITRO')
    TabOrder = 12
  end
  inherited Q_Padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    SQL.Strings = (
      
        'SELECT a.ID_PRODUTO, a.PRODUTO_DESCRICAO, a.ID_FORNECEDOR, a.VL_' +
        'CUSTO,'
      
        '    a.VL_VENDA, a.ESTOQUE, a.ESTOQUE_MIN, a.UNIDADE, a.CADASTRO,' +
        ' B.NOME'
      'FROM PRODUTO a '
      'INNER JOIN FORNECEDOR b ON b.ID_FORNECEDOR = a.ID_FORNECEDOR')
    Top = 184
    object Q_PadraoID_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo do produto'
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_PadraoPRODUTO_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o do produto'
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 50
    end
    object Q_PadraoID_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo do fornecedor'
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_PadraoVL_CUSTO: TFMTBCDField
      DisplayLabel = 'Pre'#231'o de custo'
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_PadraoVL_VENDA: TFMTBCDField
      DisplayLabel = 'Valor de venda'
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_PadraoESTOQUE: TFMTBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_PadraoESTOQUE_MIN: TFMTBCDField
      DisplayLabel = 'Estoque m'#237'nimo'
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_PadraoUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object Q_PadraoCADASTRO: TDateField
      DisplayLabel = 'Cadastro'
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_PadraoNOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo do produto'
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited ds_padrao: TDataSource
    Left = 696
    Top = 184
  end
end
