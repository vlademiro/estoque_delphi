inherited Frm_FormPgto: TFrm_FormPgto
  Caption = 'Cadastro de Formas de Pagamento'
  ClientHeight = 265
  ExplicitHeight = 293
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 56
    Top = 104
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DB_ID_FORMA_PGTO
  end
  object Label2: TLabel [1]
    Left = 56
    Top = 144
    Width = 102
    Height = 13
    Caption = 'Forma de pagamento'
    FocusControl = DB_DESCRICAO
  end
  object Label3: TLabel [2]
    Left = 278
    Top = 104
    Width = 44
    Height = 13
    Caption = 'Cadastro'
    FocusControl = DB_CADASTRO
  end
  inherited pnlBottom: TPanel
    Top = 207
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DB_ID_FORMA_PGTO: TDBEdit [6]
    Left = 56
    Top = 120
    Width = 134
    Height = 21
    DataField = 'ID_FORMA_PGTO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DB_DESCRICAO: TDBEdit [7]
    Left = 56
    Top = 160
    Width = 654
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DB_CADASTRO: TDBEdit [8]
    Left = 278
    Top = 120
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 5
  end
  inherited Q_Padrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORMA_PGTO'
    UpdateOptions.AutoIncFields = 'ID_FORMA_PGTO'
    SQL.Strings = (
      'SELECT ID_FORMA_PGTO, DESCRICAO, CADASTRO'
      'FROM FORMA_PGTO ORDER BY ID_FORMA_PGTO')
    object Q_PadraoID_FORMA_PGTO: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object Q_PadraoDESCRICAO: TStringField
      DisplayLabel = 'Forma de pagamento'
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_PadraoCADASTRO: TDateField
      DisplayLabel = 'Cadastro'
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
